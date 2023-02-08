import 'package:flutter/material.dart';
import 'package:password_demo/application/application.dart';

void main() {
  runApp(const PasswordDemoApp());
}

class PasswordDemoApp extends StatelessWidget {
  const PasswordDemoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Správce hesel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PasswordDetailPage(),
    );
  }
}
