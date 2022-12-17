import 'package:flutter/material.dart';
import 'package:homestay_v2/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Stay Raya',
      theme: ThemeData(
        primarySwatch: Colors.grey),
      home: const SplashScreen(),
    );
  }
}