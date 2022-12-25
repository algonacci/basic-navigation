import 'package:basic_navigation/error_page.dart';
import 'package:basic_navigation/first_page.dart';
import 'package:basic_navigation/generate_route.dart';
import 'package:basic_navigation/main_page.dart';
import 'package:basic_navigation/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
      routes: {
        '/main-page': (context) => const MainPage(),
        '/first-page': (context) => FirstPage(),
        '/second-page': (context) => const SecondPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const ErrorPage(),
      ),
      onGenerateRoute: LearnGeneratedRoute.generateRoute,
    );
  }
}
