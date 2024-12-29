// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';

// 🌎 Project imports:
import './Widgets/comment_tab_view_widget.dart';
import './Widgets/fullscreen_chewie.dart';
import './Widgets/lesson_tab_view_widget.dart';
import '/ChangeNotifierControllers/lesson_controller.dart';

class CoursePlayerScreenContents extends StatefulWidget {
  const CoursePlayerScreenContents({Key key}) : super(key: key);

  @override
  _CoursePlayerScreenContentsState createState() =>
      _CoursePlayerScreenContentsState();
}

class _CoursePlayerScreenContentsState
    extends State<CoursePlayerScreenContents> {
  LessonController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller = context.watch();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _controller.isLoading == false
                ? FullScreenChewie(
                    controller: _controller.chewieController,
                  )
                : AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.blueAccent,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(text: 'Lessons'),
                        Tab(text: 'Comments'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          LessonTab(),
                          _controller.isContentLoading?Center(child:CircularProgressIndicator()):
                          CommentTab(
                            courseId: _controller.courseId,
                            videoId: _controller.videoId,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class CoursePlayerScreen extends StatefulWidget {
  final LessonController lessonController;
  CoursePlayerScreen(this.lessonController, {Key key}) : super(key: key);

  @override
  _CoursePlayerScreenState createState() => _CoursePlayerScreenState();
}

class _CoursePlayerScreenState extends State<CoursePlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.lessonController,
      child: CoursePlayerScreenContents(),
    );
  }
}
