// 🎯 Dart imports:
import 'dart:developer';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import '/Const/AppConst.dart';
import '/Models/UserModel.dart';

class PremiumPage extends StatefulWidget {
  @override
  _PremiumPageState createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  String _text = 'you are not a premium user';
  Razorpay razorpay;

  @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    UserModel _user = context.read<UserModel>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(_text),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 60),
              ),
              onPressed: () {
                openCheckout(_user.phone);
              },
              child: Text(
                'Become a premium member',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff25D366),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 60),
              ),
              onPressed: _launchWhatsapp,
              child: Text(
                'WhatsApp',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchWhatsapp() async {
    const url =
        "https://wa.me/+918593951846?text=I need help in getting PregSee premium";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      log('Could not launch $url');
    }
  }

  void handlerPaymentSuccess() {
    print("Pament success");
  }

  void handlerErrorFailure() {
    print("Pament error");
  }

  void handlerExternalWallet() {
    print("External Wallet");
  }

  void openCheckout(String phoneNo) {
    var options = {
      "key": "rzp_test_LlwV6IUku9kLxr",
      "amount": 69900,
      "name": "PregSee",
      "description": "Payment for the some random product",
      "prefill": {"contact": phoneNo},
      "external": {
        "wallets": ["paytm"]
      }
    };
    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }
}
