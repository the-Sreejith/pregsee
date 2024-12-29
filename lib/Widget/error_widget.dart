// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            'assets/temp/baby-1.png',
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Uh Oh',
              style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Something went wrong\n Keep calm and try again',
              style:
                  TextStyle(color: Colors.black45, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
