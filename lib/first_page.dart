import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint('WillPopScope will run');
        number = Random().nextInt(100);
        Navigator.pop(context, number);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'First Page',
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'First Page',
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  number = Random().nextInt(100);
                  debugPrint('=== Number $number ===');
                  Navigator.of(context).pop(number);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  'Back Button',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
