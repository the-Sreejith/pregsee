// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';
import '../../../Models/UserModel.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _UserDetailsCard(),
          _RewardSummuryCard(),
          _UnlockPremiumCard(),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE0E0E0)),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            padding: const EdgeInsets.all(24.0),
            margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24),
            child: Column(
              children: [
                Text(
                  'Achievement',
                  style: AppFontStyles.acheivementstyle,
                ),
                SizedBox(height: 0),
                AchievmentBox('assets/temp/trophy.png'),
                AchievmentBox('assets/temp/medal.png'),
                AchievmentBox('assets/temp/medal-2.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UserDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserModel _user = context.read<UserModel>();
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE0E0E0)),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          padding: const EdgeInsets.all(24.0),
          margin: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _user.fullName,
                      //TODO:Limit the length of the name when creating account
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height:8),
                    // Text(
                    //   '@anjali8543',
                    //   style: TextStyle(
                    //     fontSize: 14,
                    //     fontWeight: FontWeight.w400,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    Text(
                      'Due Date',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF666666),
                        height: 2.5,
                      ),
                    ),
                    Text(
                      formatDateTime(_user.dueDate),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF666666),
                        height: 2.5,
                      ),
                    ),
                    Text(
                      '${_user.phone}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        // height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 58,
                backgroundImage: _user.photoUrl==null?AssetImage('assets/images/profile.png'):NetworkImage(_user.photoUrl),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/editUser');
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(120)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1, left: 1),
                  child: Icon(
                    AppIcons.edit_square_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }
}

class _RewardSummuryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserModel _userModel = context.read<UserModel>();
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFE0E0E0)),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      margin: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(children: [
              Image.asset(
                'assets/temp/fire.png',
                height: 42,
              ),
              Text(
                ' 2 Day\nStreak',
                textAlign: TextAlign.center,
                style: AppFontStyles.rewardText,
              )
            ]),
          ),
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  'assets/temp/diamond.png',
                  height: 42,
                ),
                Text(
                  ' ${_userModel.diamond}\n Diamonds',
                  textAlign: TextAlign.center,
                  style: AppFontStyles.rewardText,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UnlockPremiumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36.0),
      margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24),
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/temp/premium.png',
            height: 105,
          ),
          Column(
            children: [
              Container(
                  width: 140,
                  child: Text(
                    'Unlock Premium Contents',
                    style: AppFontStyles.unlockPremiumText,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(height: 14),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(120, 45),
                  primary: AppColors.secoundry,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/premiumPage');
                },
                child: Text(
                  'Get Premium',
                  style: AppFontStyles.buttontext,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AchievmentBox extends StatelessWidget {
  final String assetPath;
  AchievmentBox(this.assetPath);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 66,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE0E0E0)),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              padding: const EdgeInsets.only(
                  top: 8, right: 12, bottom: 8.0, left: 22),
              margin: const EdgeInsets.only(top: 2, bottom: 2, left: 50.0),
              child: Column(
                children: [
                  Text(
                    'Champion',
                    style: AppFontStyles.acheivementBoxHead,
                  ),
                  Text(
                    'Level 1',
                    style: AppFontStyles.acheivementBoxSubHead,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 6),
                    width: 180,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: 0.6,
                        minHeight: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE0E0E0)),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              padding: const EdgeInsets.all(12.0),
              height: 70,
              width: 70,
              child: Image.asset(assetPath),
            ),
          )
        ],
      ),
    );
  }
}
