// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

class WeekByWeekController extends ChangeNotifier {
  int _index = 0;
  bool _isEn = false;

  get index => _index;

  get isEn => _isEn;

  set index(int index) {
    _index = index;
    notifyListeners();
  }

  set isEn(bool isEn){
    _isEn = isEn;
    notifyListeners();
  }
}
