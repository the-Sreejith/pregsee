// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/Const/AppConst.dart';
import '/Models/CourseModel.dart';

class CategoryCard extends StatelessWidget {
  final CourseModel courseModel;
  CategoryCard({this.courseModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed('/courseDetails', arguments: courseModel);
      },
      child: Container(
        width: 351,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 185,
                width: 327,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 186,
                      child: Text(
                        courseModel.title,
                        style: AppFontStyles.vidCatTitle,
                      ),
                    ),
                    Text(
                      '${courseModel.noOfVideos} Videos & ${courseModel.noOfQuiz} Quiz',
                      style: AppFontStyles.vidCatSubTxt,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/courseDetails',
                            arguments: courseModel);
                      },
                      child: Text(
                        'View Course',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(113, 38),
                        primary: AppColors.secoundry,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(courseModel.imgUrl),
            )
          ],
        ),
      ),
    );
  }
}

