// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import '../../Const/AppConst.dart';
import '../../bloc/Authentication/authentication_bloc.dart';
import './Widget/switch.dart';
import '/Config/AppSettings.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

const TextStyle head = const TextStyle(
    fontSize: 21, fontWeight: FontWeight.w700, color: Color(0xFF474A57));
const TextStyle settingsItem = const TextStyle(
    fontSize: 17, fontWeight: FontWeight.w800, color: Color(0xFF18191F));
const TextStyle settingsBtn = const TextStyle(
    fontSize: 24, fontWeight: FontWeight.w800, color: Color(0xFF18191F));

class _SettingsScreenState extends State<SettingsScreen> {
  SharedPreferences _prefs;
  AppSettings _settings = AppSettings();
  final InAppReview inAppReview = InAppReview.instance;

  @override
  void initState() {
    super.initState();
  }

  Future<_Settings> _getSettings() async {
    _prefs = await SharedPreferences.getInstance();
    return _Settings(
      fullScreenSettings: _prefs.getBool('fullScreenSettings') ?? true,
      settingName1: _prefs.getBool('settingName1') ?? false,
      settingName2: _prefs.getBool('settingName2') ?? false,
      settingName3: _prefs.getBool('settingName3') ?? false,
      generalNotification: _prefs.getBool('generalNotification') ?? true,
      dailyRemainer: _prefs.getBool('dailyRemainer') ?? true,
      newContentAlert: _prefs.getBool('newContentAlert') ?? true,
      productAlert: _prefs.getBool('productAlert') ?? true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text('Edit Profile'),
      ),
      body: FutureBuilder(
        future: _getSettings(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // final _Settings _settings = snapshot.data;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'General',
                      style: head,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 8),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF18191F)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          _buildToggleSettings(
                            settingName: 'Fullscreen on rotation',
                            value: _settings.fullScreenSettings,
                            onChanged: (value) async {
                              _settings.setFullScreenSettings(value);
                            },
                          ),
                          _buildToggleSettings(
                            settingName: 'Setting Name',
                            value: _settings.settingName1,
                            onChanged: (value) async {
                              _settings.setsettingName1(value);
                            },
                          ),
                          _buildToggleSettings(
                            settingName: 'Setting Name',
                            value: _settings.settingName2,
                            onChanged: (value) async {
                              _settings.setsettingName2(value);
                            },
                          ),
                          _buildToggleSettings(
                            settingName: 'Setting Name',
                            value: _settings.settingName3,
                            onChanged: (value) async {
                              _settings.setsettingName3(value);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: _SettingButton(
                        'Sign Out',
                        () {
                          BlocProvider.of<AuthenticationBloc>(context)
                              .add(LogOut());
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Text(
                      'Notification',
                      style: head,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 24),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF18191F)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          _buildToggleSettings(
                            settingName: 'General Notification',
                            value: _settings.generalNotification,
                            onChanged: (value) async {
                              await _prefs.setBool(
                                  'generalNotification', value);
                            },
                          ),
                          _buildToggleSettings(
                            settingName: 'Dialy Remainder',
                            value: _settings.dailyRemainer,
                            onChanged: (value) async {
                              await _prefs.setBool('dailyRemainer', value);
                            },
                          ),
                          _buildToggleSettings(
                            settingName: 'New Content Alert',
                            value: _settings.newContentAlert,
                            onChanged: (value) async {
                              await _prefs.setBool('newContentAlert', value);
                            },
                          ),
                          _buildToggleSettings(
                            settingName: 'Product Alert',
                            value: _settings.productAlert,
                            onChanged: (value) async {
                              await _prefs.setBool('productAlert', value);
                            },
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Support',
                      style: head,
                    ),
                    SizedBox(height: 8),
                    _SettingButton(
                      'Help',
                      () async {
                        const String url = 'mailto:help@pregsee.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                    ),
                    _SettingButton(
                      'Feedback',
                      () async {
                        if (await inAppReview.isAvailable()) {
                          inAppReview.requestReview();
                        }
                      },
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Privacy',
                      style: head,
                    ),
                    SizedBox(height: 8),
                    _SettingButton(
                      'Terms',
                      () async {
                        const String url = 'https://pregsee.com/terms';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                    ),
                    _SettingButton(
                      'Privacy',
                      () async {
                        const String url = 'https://pregsee.com/privacy-policy';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                    ),
                    // SizedBox(height: 8),
                    _SettingButton(
                      'About',
                      () => showLicensePage(
                        context: context,
                        applicationName: 'My App Name',
                        applicationIcon: Padding(
                          padding: EdgeInsets.all(8),
                          child: Image.asset('assets/images/logo.png',
                              width: 48, height: 48,color: AppColors.primary,),
                        ),
                        applicationVersion: '0.1.0',
                        applicationLegalese: 'Copyright PregSee',
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return Center(
            child: const SpinKitThreeBounce(color: AppColors.primary),
          );
        },
      ),
    );
  }
}

Widget _buildToggleSettings(
    {String settingName, bool value, Function(bool value) onChanged}) {
  return Container(
    height: 56,
    padding: const EdgeInsets.only(left: 24.0, right: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(settingName, style: settingsItem),
        CustomSwitch(initialValue: value, onChanged: onChanged)
      ],
    ),
  );
}

class _SettingButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const _SettingButton(this.text, this.onTap, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF18191F)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            text,
            style: settingsItem,
          ),
        ),
      ),
    );
  }
}

class _Settings {
  final bool fullScreenSettings;
  final bool settingName1;
  final bool settingName2;
  final bool settingName3;

  final bool generalNotification;
  final bool dailyRemainer;
  final bool newContentAlert;
  final bool productAlert;

  _Settings(
      {this.fullScreenSettings,
      this.settingName1,
      this.settingName2,
      this.settingName3,
      this.generalNotification,
      this.dailyRemainer,
      this.newContentAlert,
      this.productAlert});
}
