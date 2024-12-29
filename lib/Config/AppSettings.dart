// 📦 Package imports:
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings {
  SharedPreferences _preferences;

  AppSettings() {
    _initialize();
  }

  _initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  get fullScreenSettings =>_preferences.getBool('fullScreenSettings') ?? true;
  get settingName1 =>_preferences.getBool('settingName1') ?? true;
  get settingName2 =>_preferences.getBool('settingName2') ?? true;
  get settingName3 =>_preferences.getBool('settingName3') ?? true;
  
  //TODO:This should be in the cloud so FCM can be configured from that data
  get generalNotification =>_preferences.getBool('generalNotification') ?? true;
  get dailyRemainer =>_preferences.getBool('dailyRemainer') ?? true;
  get newContentAlert =>_preferences.getBool('newContentAlert') ?? true;
  get productAlert =>_preferences.getBool('productAlert') ?? true;


  setFullScreenSettings(bool value) => _preferences.setBool('fullScreenSettings', value);
  setsettingName1(bool value) => _preferences.setBool('fullScreenSettings', value);
  setsettingName2(bool value) => _preferences.setBool('fullScreenSettings', value);
  setsettingName3(bool value) => _preferences.setBool('fullScreenSettings', value);
}
