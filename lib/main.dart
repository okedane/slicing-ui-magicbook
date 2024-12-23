import 'package:google_fonts/google_fonts.dart';
import 'package:magic_book/state_util.dart';
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
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          titleMedium: TextStyle(color: mainTextColor),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          foregroundColor: mainTextColor,
          titleTextStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: mainTextColor,
            fontSize: 16,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainNavigationView(),
    );
  }
}
