// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../Const/AppConst.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final Color color;
  final String text;
  final bool outlined;
  final TextStyle textStyle;
  CustomButton({this.onPressed,this.color,this.outlined = false,this.text,this.textStyle});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(170, 52),
        primary: color??AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text??'Next',
        style: textStyle??AppFontStyles.buttontext,
      ),
    );
  }
}
