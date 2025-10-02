import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shelf_web_server/shelf_web_server.dart';
import 'package:path/path.dart' as p;

void main() => runApp(const MyApp());

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
              ElevatedButton(
                onPressed: () => runDartFrogServer(),
                child: const Text('Start Server with Dart Frog Web Server'),
              ),
              ElevatedButton(
                onPressed: () => runShelfServer(),
                child: const Text('Start Server with Shelf Web Server'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void runDartFrogServer() async {
  // This assumes the production dart_frog server was generated in `build`.
  // To generate the production server run: "dart_frog build" from within
  // the packages/web_server directory.
  final process = await Process.start('dart', [
    p.join('packages', 'web_server', 'build', 'bin', 'server.dart'),
  ]);
  await process.exitCode;
}
