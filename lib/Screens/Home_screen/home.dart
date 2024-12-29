// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import './HomePage/home_page.dart';
import './ProductPage/product_page.dart';
import './ProfilePage/profile_page.dart';
import './Widgets/widget.dart';
import '/Const/AppConst.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'PregSee',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        actions: [
          if(currentIndex==0)
            IconButton(icon: Icon(AppIcons.notification_outline,color: Colors.black,size: 24,), onPressed: (){Navigator.of(context).pushNamed('/notifications');}),
          if(currentIndex==1)
            IconButton(icon: Icon(AppIcons.heart_bold,color: Colors.red,size: 24,), onPressed: (){Navigator.of(context).pushNamed('/err');}),
          if(currentIndex==2)
            IconButton(icon: Icon(AppIcons.settings_outline,color: Colors.black,size: 24,), onPressed: (){Navigator.of(context).pushNamed('/settings');}),
        ],
        leading: SizedBox(width: 24),
        elevation: 8,
        backgroundColor: Colors.white,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: <Widget>[
          HomePage(),
          ProductPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(
        items: navList,
        opacity: 1,
        onTap: changePage,
        currentIndex: currentIndex,
      ),
    );
  }

  List<CustomBottomBarItem> navList = <CustomBottomBarItem>[
    CustomBottomBarItem(
      icon: Icon(
        AppIcons.home_outlined,
        color: Colors.black,
      ),
      activeIcon: GradientIcon(
        AppIcons.home_bold,
        24.0,
        AppGradient.primaryGradient,
      ),
    ),
    CustomBottomBarItem(
      icon: Icon(
        AppIcons.shop_outline,
        color: Colors.black,
      ),
      activeIcon: GradientIcon(
        AppIcons.shop_bold,
        24.0,
        AppGradient.primaryGradient,
      ),
    ),
    CustomBottomBarItem(
      icon: Icon(
        AppIcons.profile_outline,
        color: Colors.black,
      ),
      activeIcon: GradientIcon(
        AppIcons.profile_bold,
        24.0,
        AppGradient.primaryGradient,
      ),
    )
  ];
}
