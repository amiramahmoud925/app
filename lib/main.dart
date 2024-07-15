import 'package:app/list_screen/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/Home/component.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:app/Home/parts.dart';
import 'package:app/list_screen/screens.dart';
import 'package:app/list_screen/profile.dart';
import 'package:app/Home/horzintal listview .dart';
import 'package:app/Home/home_screen.dart';
import 'package:app/splash_screen.dart';
import 'package:app/auth_screen.dart';
import 'package:app/login/login_screen.dart';
import 'package:app/signup/sign_up.dart';
import 'package:app/onboarding/onboardingview.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      );

  }
}

