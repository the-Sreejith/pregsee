// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import '../../Const/AppConst.dart';
import '../../bloc/Login/login_bloc.dart';

class AppIntro extends StatefulWidget {
  @override
  _AppIntroState createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  PageController _pageController;
  int currentIndex = 0;
  bool isFinished = false;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      if (_pageController.page == 2) {
        setState(() {
          isFinished = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 17,
            child: PageView(
              onPageChanged: (int page) {
                setState(() {
                  currentIndex = page;
                });
              },
              controller: _pageController,
              children: <Widget>[
                makePage(
                    image: 'assets/images/app_intro/intro-1.png',
                    title: stepOneTitle,
                    // content: stepOneContent,
                    ),
                makePage(
                    image: 'assets/images/app_intro/intro-2.png',
                    title: stepTwoTitle,
                    // content: stepTwoContent,
                    ),
                makePage(
                    image: 'assets/images/app_intro/intro-3.png',
                    title: stepThreeTitle,
                    // content: stepThreeContent,
                    ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildIndicator(),
                  ),
                ),
                Container(
                  child: _actionButton(isFinished),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget makePage({image, title}) {
    return Container(
      padding: EdgeInsets.all(36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(image),
          ),
          SizedBox(height: 18,),
          Text(
            title,
            style: AppFontStyles.introHeadingeading,
            textAlign: TextAlign.center,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: Text(
          //     content,
          //     textAlign: TextAlign.center,
          //     style: AppFontStyles.subtext,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10,
      width: isActive ? 30 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: AppColors.secoundry,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }

  Widget _actionButton(bool isFinished) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(170, 52),
        primary: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        isFinished
            ? BlocProvider.of<LoginBloc>(context).add(AppStartEvent())
            : _pageController.nextPage(
                duration: Duration(milliseconds: 800), curve: Curves.ease);
      },
      child: Text(
        isFinished ? 'Get started' : 'Next',
        style: AppFontStyles.buttontext,
      ),
    );
  }
}
