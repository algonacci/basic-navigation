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
      body: Center(
        child: Column(
          children: [
            const Text(
              'Second Page',
              style: TextStyle(
                fontSize: 36,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                '/book-list-page',
                arguments: 10,
              ),
              child: const Text(
                'Book List Page',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                '/third-page',
              ),
              child: const Text(
                'Third Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
