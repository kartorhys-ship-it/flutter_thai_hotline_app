import 'package:flutter/material.dart';

import 'views/splash_screen_ui.dart';

const appName = 'สายด่วน THAILAND';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff252c64),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Kanit',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffececf2),
          foregroundColor: Color(0xff202137),
          centerTitle: true,
          scrolledUnderElevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: 'Kanit',
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xff202137),
          ),
        ),
      ),
      home: const SplashScreenUI(),
    );
  }
}
