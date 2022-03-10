import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sebha/help.dart';
import 'package:sebha/home.dart';
import 'package:sebha/tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sebha',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splashIconSize: 1000,
          splash: Image.network(
            'https://i02.appmifile.com/images/2018/07/28/75ece2e1-cef0-4718-afc1-5704a16edcc1.jpg',
            height: double.infinity,
            width: double.infinity,
          ),
          duration: 2000,
          backgroundColor: Colors.yellow,
          nextScreen: TabPage()),
    );
  }
}
