import 'package:flutter/material.dart';
import 'package:shelf_web_server/shelf_web_server.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Dart Frog Desktop')),
        body: Center(
          child: Column(
            children: [
              Text('Welcome to Dart Frog Desktop!'),
              ElevatedButton(onPressed: () {}, child: const Text('Start Server with Dart Frog Web Server')),
              ElevatedButton(onPressed: () => runShelfServer(), child: const Text('Start Server with Shelf Web Server')),
            ],
          ),
        ),
      ),
    );
  }
}
