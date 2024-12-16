import 'package:magic_book/core/theme/theme_config.dart';
import 'package:magic_book/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F6F6),
        textTheme: TextTheme(
          titleMedium: TextStyle(color: mainTextColor),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
