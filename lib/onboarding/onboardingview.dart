import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app/auth_screen.dart';
import 'package:get/get.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();

}

class _OnBoardingViewState extends State<OnBoardingView> {
  String title = "E Shopping";
  String subtitle = 'Explore  top organic fruits & grab them';
  String images = "assets/images/onboarding1.png";
  String button = "Next";

  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Center(
          child: Column(
            children: [
              Container(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    images,
                    fit: BoxFit.fill,
                  )),
              SizedBox(height: 30,),
              Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  _changeOnBoarding();
                },

                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF69A03A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 45, width: 90,
                  child: Center(
                    child: Text(button, style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _changeOnBoarding() {
    if (index < 2) {
      index++;
      title = titleList[index];
      subtitle = subtitleList[index];
      images = imageList[index];
      button = "Next ";
      setState(() {

      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AuthScreen()),
      );
    }
  }

}
  List titleList = [
    'E Shopping',
    'Delivery on the way',
    'Delivery Arrived',
  ];

  List subtitleList = [
    'Explore  top organic fruits & grab them',
    'Get your order by speed delivery',
    'Order is arrived at your Place',
  ];

  List imageList = [
    "assets/images/onboarding1.png",
    "assets/images/onboarding2.png",
    "assets/images/onboarding3.png",
  ];

