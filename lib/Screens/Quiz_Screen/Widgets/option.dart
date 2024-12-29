// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../Const/QuizConst.dart';

enum QuesOption { initial, correct, incorrect, disabled }

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.text,
    this.index,
    this.optionStatus,
    this.onPress,
  }) : super(key: key);
  final String text;
  final int index;
  final QuesOption optionStatus;
  final VoidCallback onPress;

  Color getTheRightColor() {
    if (optionStatus != QuesOption.initial) {
      if (optionStatus == QuesOption.correct) {
        return kGreenColor;
      } else if (optionStatus == QuesOption.incorrect) {
        return kRedColor;
      }
    }else{
      return Color(0xFFD3ECFF);
    }
    return kGrayColor;
  }

  IconData getTheRightIcon() {
    return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: getTheRightColor(),width: 3),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.2)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${index + 1}. $text",
              style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: getTheRightColor() == Color(0xFFD3ECFF)
                    ? Colors.transparent
                    : getTheRightColor(),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: getTheRightColor(),width: 3),
              ),
              child: (getTheRightColor() == kGrayColor||getTheRightColor() == Color(0xFFD3ECFF))
                  ? null
                  : Icon(getTheRightIcon(), size: 16),
            )
          ],
        ),
      ),
    );
  }
}
