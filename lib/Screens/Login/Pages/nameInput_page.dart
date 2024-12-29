// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';

class NameInputPage extends StatelessWidget {
  final TextEditingController textEditingController;
  NameInputPage(this.textEditingController);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Your Name',
            style: AppFontStyles.loginhHeading,
          ),
          SizedBox(
            height: 15,
            width: double.infinity,
          ),
          Text('Please enter your full name',
              style: AppFontStyles.loginSubtext),
          SizedBox(height: 33),
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(
                hintText: 'Full Name',
                border: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                focusedBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                    borderRadius: const BorderRadius.all(Radius.circular(16)))),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
