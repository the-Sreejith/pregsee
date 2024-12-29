// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 🌎 Project imports:
import '../Const/AppConst.dart';

const TextStyle kstyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

class CourseContentCard extends StatelessWidget {
  final bool isPlaying, isQuiz;
  final String title, duration;
  final int noOfQuiestion;
  final double progress;
  final Function onTap;
  CourseContentCard(
      {this.isPlaying = false,
      this.isQuiz = false,
      this.noOfQuiestion = 4,
      this.title,
      this.duration,
      this.progress,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isPlaying ? Color(0xFFE0E0E0) : Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                  color: !isQuiz ? AppColors.primary : AppColors.secoundry,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: !isQuiz
                    ? Icon(
                        Icons.play_arrow_rounded,
                        size: 40,
                        color: Colors.white,
                      )
                    : Text(
                        'Q',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: kstyle,
                    ),
                  ),
                  !isQuiz
                      ? Expanded(
                          child: Row(
                            children: [
                              SizedBox(width: 11),
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 14,
                              ),
                              SizedBox(width: 4),
                              Text(duration),
                              Spacer(),
                              SizedBox(
                                width: 117,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: progress,
                                    minHeight: 6,
                                    backgroundColor: Colors.black12,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        AppColors.secoundry),
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Text(
                            '$noOfQuiestion Questions',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
