import 'package:flutter/material.dart';

void main() {
  runApp(const TiktokApp());
}

class TiktokApp extends StatelessWidget {
  const TiktokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tiktok App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(),
    );
  }
}