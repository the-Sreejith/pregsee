// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';

class DuedateInputPage extends StatelessWidget {
  final void Function(DateTime date) onDueDateChanged;
  DuedateInputPage(this.onDueDateChanged);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Due Date',
            style: AppFontStyles.loginhHeading,
          ),
          SizedBox(height: 15),
          Text('It is okay if you don’t know. Please pick an aproximate date',
              style: AppFontStyles.loginSubtext),
          SizedBox(height: 40),
          Container(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: onDueDateChanged,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(),
                children: [
                  TextSpan(
                      text:
                          'Don\'t know the due date? \n',
                      style: AppFontStyles.nText),
                  TextSpan(text: 'Calculate DueDate from last period', style: AppFontStyles.linkText),
                ],
              ),
            ),
          ),
          // SizedBox(height: 100),
        ],
      ),
    );
  }
}
