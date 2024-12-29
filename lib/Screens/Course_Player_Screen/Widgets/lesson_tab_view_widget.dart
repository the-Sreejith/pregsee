// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';

// 🌎 Project imports:
import '/ChangeNotifierControllers/lesson_controller.dart';
import '/Models/CourseContent.dart';
import '/Widget/course_content_card.dart';

class LessonTab extends StatelessWidget {
  const LessonTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LessonController _controller = context.watch();
    if (_controller.isContentLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: _controller.contents.length,
        itemBuilder: (context, index) {
          double progress;
          if (_controller.progressList != null) {
            int progressIndex = _controller.progressList.indexWhere((element) =>
                element.lessonId == _controller.contents[index].id);
            progress = progressIndex != -1
                ? _controller.progressList[progressIndex].durationSeen /
                    _controller.progressList[progressIndex].durationTotal
                : 0;
          }
          if (_controller.contents[index] is Video) {
            Video video = _controller.contents[index];
            return CourseContentCard(
              title: video.title,
              isPlaying: index == _controller.currentPlayingVideoIndex,
              duration: video.duration,
              progress: progress,
              onTap: () {
                _controller.changeContent(index);
              },
            );
          } else if (_controller.contents[index] is Quiz) {
            final Quiz _content = _controller.contents[index];
            return CourseContentCard(
              title: _content.title,
              isQuiz: true,
              noOfQuiestion: _content.questions.length,
              onTap: () {
                Navigator.of(context)
                    .pushNamed('/quiz', arguments: _content.questions);
              },
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
