// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';

// 🌎 Project imports:
import '/ChangeNotifierControllers/lesson_controller.dart';
import '/Const/AppConst.dart';
import '/Models/CourseContent.dart';
import '/Models/CourseModel.dart';
import '/Models/ProgressModel.dart';
import '/Models/UserModel.dart';
import '/Widget/course_content_card.dart';
import '/data/course_repository.dart';
import '/data/progress_repository.dart';

const TextStyle courseDetailHead =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600);

class CourseDetailsScreen extends StatelessWidget {
  final CourseModel courseModel;
  CourseDetailsScreen({this.courseModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 300,
                color: AppColors.primary,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, bottom: 30),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 146,
                              child: Text(
                                courseModel.title,
                                style: AppFontStyles.vidCatTitle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                '${courseModel.noOfVideos} Videos & ${courseModel.noOfQuiz} Quiz',
                                style: AppFontStyles.vidCatSubTxt,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(courseModel.imgUrl),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomSheet: _ContentSection(courseModel.id),
        ),
      ),
    );
  }
}

class _ContentSection extends StatefulWidget {
  final String courseId;
  _ContentSection(this.courseId);
  @override
  _ContentSectionState createState() => _ContentSectionState();
}

class _ContentSectionState extends State<_ContentSection> {
  CourseContentRepository courseContentRepository;
  ProgressRepository progressRepository;

  @override
  void initState() {
    progressRepository = ProgressRepository(
        uid: context.read<UserModel>().uid, courseId: widget.courseId);
    courseContentRepository = CourseContentRepository();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height - 275;
    return Container(
      height: _height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          topLeft: Radius.circular(35),
        ),
        color: Colors.white,
      ),
      child: FutureBuilder(
        future: getContents(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            List<CourseContent> courseContents = snapshot.data.content;
            List<Progress> progress = snapshot.data.progress;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 30,
                    top: 35,
                    bottom: 12,
                  ),
                  child: Text(
                    'Course Contents',
                    style: courseDetailHead,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: courseContents.length,
                    itemBuilder: (context, index) {
                      if (courseContents[index] is Video) {
                        final Video _content = courseContents[index];
                        double progressValue = 0;
                        if (progress != null) {
                          int progressIndex = progress.indexWhere((element) =>
                              element.lessonId == courseContents[index].id);
                          if (progressIndex != -1) {
                            progressValue =
                                progress[progressIndex].durationSeen /
                                    progress[progressIndex].durationTotal;
                          }
                        }
                        return CourseContentCard(
                          title: _content.title,
                          duration: _content.duration,
                          progress: progressValue,
                          onTap: () {
                            LessonController _controller = LessonController(
                              courseId: widget.courseId,
                              contents: courseContents,
                              initialContentId: _content.id,
                              progressRepo: progressRepository,
                            );
                            Navigator.of(context).pushReplacementNamed('/coursePlayer',arguments: _controller);
                          },
                        );
                      }
                      if (courseContents[index] is Quiz) {
                        final Quiz _content = courseContents[index];
                        return CourseContentCard(
                          title: _content.title,
                          isQuiz: true,
                          noOfQuiestion: _content.questions.length,
                          onTap: () {
                            Navigator.of(context).pushNamed('/quiz',arguments: _content.questions);
                          },
                        );
                      }
                      return SizedBox();
                    },
                  ),
                )
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<Data> getContents() async {
    List<CourseContent> courseContents =
        await courseContentRepository.getCourseContents(
            widget.courseId, context.read<UserModel>().userType == 'premium');

    List<Progress> progress = await progressRepository.getProgress();
    return Data(courseContents, progress);
  }
}

class Data {
  final List<CourseContent> content;
  final List<Progress> progress;
  Data(this.content, this.progress);
}
