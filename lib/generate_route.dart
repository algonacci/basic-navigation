import 'package:basic_navigation/book_detail.dart';
import 'package:basic_navigation/book_list_page.dart';
import 'package:basic_navigation/error_page.dart';
import 'package:basic_navigation/first_page.dart';
import 'package:basic_navigation/main_page.dart';
import 'package:basic_navigation/third_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LearnGeneratedRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    Route<dynamic> createRoute(Widget pageToGo, RouteSettings settings) {
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        return CupertinoPageRoute(
          settings: settings,
          builder: (context) => pageToGo,
        );
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => pageToGo,
        );
      } else {
        return CupertinoPageRoute(
          settings: settings,
          builder: (context) => pageToGo,
        );
      }
    }

    switch (settings.name) {
      case ('/main-page'):
        return createRoute(const MainPage(), settings);
      case ('/first-page'):
        return createRoute(FirstPage(), settings);
      case ('/book-list-page'):
        debugPrint(settings.name);
        debugPrint(settings.arguments.toString());
        return createRoute(const BookListPage(), settings);
      case ('/detail-book-page'):
        var selectedBook = settings.arguments as Book;
        return createRoute(
            BookDetailPage(selectedBook: selectedBook), settings);
      case ('/third-page'):
        return createRoute(const ThirdPage(), settings);
      default:
        MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
    return null;
  }
}
