// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class AppColors{
  static const Color primary = Color(0xFF014E89);
  static const Color gray = Color(0xFFE9E7FC);
  static const Color secoundry = Color(0xffF95A2C);
  static const Color secoundryLight = Color.fromRGBO(226, 185, 141, 1);
  static const Color borderColor = Color(0xFFE0E0E0);
  static const Color lightBlueBg = Color(0xFFADD1FF);
  static const Color lightBlueWeekByWeekBg = Color(0xFF2A9BF0);
}

class AppGradient{
  static const Gradient primaryGradient = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF004E89),
    Color(0xFF2A9BF0),
  ],
);
}
