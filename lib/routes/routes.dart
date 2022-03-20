import 'package:flutter/material.dart';

import '../pages/main_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

class RoutesManager {
  static const String homePage = '/';
  static const String secondPage = '/secondPage';
  static const String thirdPage = '/thirdPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );
      case secondPage:
        return MaterialPageRoute(
          builder: (context) => SecondPage(),
        );
      case thirdPage:
        return MaterialPageRoute(
          builder: (context) => ThirdPage(),
        );
      default:
        throw FormatException('Route not found, Check routes.');
    }
  }
}
