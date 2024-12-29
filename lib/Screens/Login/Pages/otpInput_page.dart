// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';
import '../../../bloc/Login/login_bloc.dart';

class OTPInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter the OTP',
            style: AppFontStyles.loginhHeading,
          ),
          SizedBox(height: 15),
          Text('You will receive a Verification code by sms',
              style: AppFontStyles.loginSubtext),
          SizedBox(height: 50),
          PinCodeTextField(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            cursorHeight: 3,
            cursorWidth: 12,
            cursorColor: Colors.black,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(16),
              fieldHeight: 50,
              fieldWidth: 50,
              activeColor: Color(0xFFE0E0E0),
              inactiveColor: Color(0xFFE0E0E0),
              selectedColor: Colors.black,
              activeFillColor: Colors.white,
            ),
            appContext: context,
            length: 6,
            onChanged: (s) => print(s),
            onSubmitted: (String pin) {
              BlocProvider.of<LoginBloc>(context).add(VerifyOtpEvent(otp: pin));
            },
            onCompleted: (String pin) {
              BlocProvider.of<LoginBloc>(context).add(VerifyOtpEvent(otp: pin));
            },
          ),
          SizedBox(height: 24),
          Container(
            height: 24,
            width: double.infinity,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(),
                children: [
                  TextSpan(
                      text: 'Didn\'t got the OTP? ',
                      style: AppFontStyles.nText),
                  TextSpan(text: 'Resend now', style: AppFontStyles.linkText),
                ],
              ),
            ),
          ),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}
