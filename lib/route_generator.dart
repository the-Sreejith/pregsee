// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import './Screens/screens_barrel.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final argument = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/editUser':
        return MaterialPageRoute(builder: (_) => ProfileEditScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case '/courseDetails':
        return MaterialPageRoute(builder: (_) => CourseDetailsScreen(courseModel: argument));
      case '/coursePlayer':
        return MaterialPageRoute(builder: (_) => CoursePlayerScreen(argument));
      case '/quiz':
        return MaterialPageRoute(builder: (_) => QuizScreen(argument));
      case '/productDetails':
        return MaterialPageRoute(builder: (_) => ProductDetailsScreen(argument));
      case '/premiumPage':
        return MaterialPageRoute(builder: (_) => PremiumPage());
      case '/notifications':
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case '/favProducts':
        return MaterialPageRoute(builder: (_) => FavouriteProductListingScreen());
      // REWARD SCREENS 
      case '/diamondEarned':
        return MaterialPageRoute(builder: (_) => (DiamondIncrease(argument)));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}
