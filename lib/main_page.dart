import 'package:basic_navigation/first_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Main Page',
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Main Page',
              style: TextStyle(
                fontSize: 36,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push<int>(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstPage(),
                ),
              ).then(
                (int? incomingNumber) => debugPrint(
                  ' === Incoming number: $incomingNumber ===',
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: const Text(
                'First Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
