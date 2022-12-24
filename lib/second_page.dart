import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Page',
        ),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
