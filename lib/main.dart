import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dart Frog Desktop')),
      body: Center(
        child: Column(
          children: [
            Text('Welcome to Dart Frog Desktop!'),
            ElevatedButton(onPressed: () {}, child: const Text('Start Server')),
          ],
        ),
      ),
    );
  }
}
