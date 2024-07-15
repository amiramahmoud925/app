import 'package:app/onboarding/onboardingview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  {

  @override
  void initState() {

    Future.delayed(Duration(seconds: 4)).then((value) =>
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => OnBoardingView(),
            ),
            ),
        );
    super.initState();
  }

@override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69A03A),
      body: Container(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 200),
               child: Text("Fruits Market", style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff),
                ),
            ),
             ),
            Spacer(),
            Image.asset("assets/images/splash.png",
              fit: BoxFit.fill,),

          ],
        ),
      ),
    );
  }
}




