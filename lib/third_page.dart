import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Third Page',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Third Page'),
            const Text('Learn about popUntil'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == '/');
              },
              child: const Text(
                'popUntil',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/first-page',
                  (route) => route.isFirst,
                );
              },
              child: const Text(
                'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
