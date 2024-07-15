import 'package:flutter/material.dart';
import 'package:app/login/login_screen.dart';
import 'package:app/signup/sign_up.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [

          Container(
            padding: EdgeInsets.all(5),
            height: 350 ,
            width: 350,

            child: Image.asset("assets/images/logo.png",
            ),
          ),
          SizedBox(height: 10,),

          Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Welcome To Our ", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),),
                SizedBox(height: 10,),
                Text("Fruit Market ", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF69A03A),

                ),),
                SizedBox(height: 130,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _button( text: "Continue with Email or Phone" ,
                      color: Color(0xFF69A03A),textcolor: Colors.white,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    _button( text: "Create an account" ,
                      color: Color(0xFF69A03A) , textcolor: Colors.white,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                    ),

                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _button( {
    required String text,
    required Color color,
    required Color textcolor,

    void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child:Center(
        child: Container(

          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(

            child: Text(text ,
              style: TextStyle( fontSize: 15,
                  color: textcolor),
            ),
          ),
        ),
      ),

    );
  }

}

