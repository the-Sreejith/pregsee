// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
// import 'package:international_phone_input/international_phone_input.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';

class PhoneNumberInputPage extends StatelessWidget {
  final void Function(String phoneNumber, String internationalizedPhoneNumber,
      String isoCode, String dialCode) onPhoneNumberChange;

  PhoneNumberInputPage(this.onPhoneNumberChange);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Your Phone Number',
            style: AppFontStyles.loginhHeading,
          ),
          SizedBox(height: 15),
          Text('We might send a verification code to verify this number',
              style: AppFontStyles.loginSubtext),
          SizedBox(height: 33),
          // ..._buildCards(availableLanguages),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xFF4E4E4E),
              ),
            ),
            child: InternationalPhoneInput(
              decoration: InputDecoration(border: InputBorder.none),
              showCountryFlags: false,
              initialSelection: 'IN',
              hintText: 'Phone Number',
              hintStyle:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
              inputStyle:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
              onPhoneNumberChange: onPhoneNumberChange,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 18, left: 8),
            child: Row(
              children: [
                Icon(AppIcons.lock_outline),
                SizedBox(width: 8),
                Flexible(
                  child: Text(
                    'Your phone number is secured with us, we dont share it with any third party.',
                    style: AppFontStyles.loginSubtext
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
