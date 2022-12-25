import 'package:basic_navigation/error_page.dart';
import 'package:basic_navigation/first_page.dart';
import 'package:basic_navigation/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LearnGeneratedRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    Route<dynamic> createRoute(Widget pageToGo) {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        return CupertinoPageRoute(
          builder: (context) => pageToGo,
        );
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        return MaterialPageRoute(
          builder: (context) => pageToGo,
        );
      } else {
        return CupertinoPageRoute(
          builder: (context) => pageToGo,
        );
      }
    }

    switch (settings.name) {
      case ('/main-page'):
        return createRoute(const MainPage());
      case ('/first-page'):
        return createRoute(FirstPage());
      default:
        MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
    return null;
  }
}
