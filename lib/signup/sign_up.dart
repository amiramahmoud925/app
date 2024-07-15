import 'package:app/Home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/signup/cutom_text.dart';
import 'package:app/login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Welcome To Our \nMarket", style: TextStyle(
                      fontSize: 20 ,
                      fontWeight: FontWeight.bold,
                          color: Colors.black,
          ),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 600,
                  width: 420,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          CustomTextField( text: "Name", controller: _nameController),
                          SizedBox(height: 20,),
                          CustomTextField( text: "Email", controller: _emailController),
                          SizedBox(height: 20,),
                          CustomTextField( text: "Password", controller: _passwordController , isPassword: true,),
                          SizedBox(height: 20,),

                          SizedBox(height: 50,),
                          Row(
                            children: [
                              Text("Sign Up",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                              Spacer(),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => HomeScreen()),);
                                },
                                child: Container(
                                  height: 55,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFF69A03A),
                                  ),
                                  child:
                                  Icon(Icons.arrow_forward_sharp , size: 30,color: Colors.white,),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Alreday Have Account?", style: TextStyle(
                                  fontSize: 15 ,
                                  color: Colors.grey,
                                ),),
                                SizedBox(width: 5,),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => LoginScreen()),);
                                  },
                                  child: Text("Log in", style: TextStyle(
                                    fontSize: 15 ,
                                    color: Color(0xFF69A03A),
                                  ),),
                                ),

                              ],

                          )

                        ],
                      ),

                    ),

                  ),
              ],
          ),
            ),
        )

    ),
      ),
    );
  }
}
