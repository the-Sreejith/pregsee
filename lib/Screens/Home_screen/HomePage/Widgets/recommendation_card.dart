// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';

// 🌎 Project imports:
import '/ChangeNotifierControllers/lesson_controller.dart';
import '/Const/AppConst.dart';
import '/Models/ReccomendedVideo.dart';
import '/Models/UserModel.dart';
import '/data/progress_repository.dart';

class RecommendationCard extends StatelessWidget {
  final RecommendedVideo item;

  const RecommendationCard({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final uid = context.read<UserModel>().uid;
        LessonController _controller = LessonController(
          courseId: item.courseId,
          initialContentId: item.lessonId,
          progressRepo: ProgressRepository(courseId: item.courseId,uid: uid),
        );
        Navigator.of(context).pushNamed('/coursePlayer',arguments: _controller);
      },
      child: Container(
        height: 103,
        width: 332,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          border: Border.all(
            color: AppColors.borderColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: '${item.contentTitle}\n',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF003257)),
                  ),
                  TextSpan(
                    text: '${item.category}',
                    style: TextStyle(
                        fontSize: 10,
                        height: 2.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3C6D93)),
                  ),
                ]),
              ),
            ),
            SizedBox(width: 4),
            Container(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      child: CircularProgressIndicator(
                        value: item.durationSeen / item.durationTotal,
                        strokeWidth: 3,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.primary),
                        backgroundColor: Color(0xFFE7F4FF),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
