import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/Home/home_screen.dart';
import 'package:app/signup/sign_up.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _obscureText = true;
  final _formkey = GlobalKey<FormState>();
  final _emailcontroll = TextEditingController();
  final _passwordcontroll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Form(
            key:_formkey ,

          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                    height: 150,
                    width: 200,
                    child: Image.asset("assets/images/logo2.png"),

                  ),

                SizedBox(height: 15,),
                Text("Welcome To Our Market", style: TextStyle(
                  fontSize: 30 ,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF69A03A),
                ),),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Text("Email", style: TextStyle(
                      fontSize: 10 ,
                      color: Colors.grey,
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _emailcontroll,
                  validator: (value){
                    bool emailvalid = RegExp(
                        r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$'
                    ).hasMatch(value ?? "");
                     if(emailvalid == false) {
                       return " Email is not match ";
                     }

                    if(value!.isEmpty){
                      return "The Field is empty  ";
                    }else if(value!.length < 11){
                      return " phone can't by less than 11 digits";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: EdgeInsets.all(20),
                    fillColor: Colors.grey[300],
                    hintText: 'email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )

                  ),

                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Password", style: TextStyle(
                      fontSize: 10 ,
                      color: Colors.grey,
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _passwordcontroll,
                  validator: (value){
                    if(value!.isEmpty){
                      return "The Field is empty  ";
                    }else if(value!.length < 6){
                      return " password can't by less than 6 digits";
                    }
                    return null;
                  },
                  obscureText : _obscureText,
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: EdgeInsets.all(20),
                    fillColor: Colors.grey[300],
                    hintText: 'password',
                    suffixIcon: InkWell(
                      onTap: (){
                        _obscureText= !_obscureText;
                            setState(() {

                            });
                      },
                      child: Icon(_obscureText
                          ?CupertinoIcons.eye_fill
                          :CupertinoIcons.eye_slash),
                    ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      )
                  ),

                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forget Password?", style: TextStyle(
                      fontSize: 15 ,
                      color: Colors.black,
                    ),),
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                    _formkey.currentState!.validate();
                    print(_emailcontroll.text);
                    print(_passwordcontroll.text);

                  },
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: Container(
                    height: 55,
                    width: 350,

                    decoration: BoxDecoration(
                      color: Color(0xFF69A03A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text("Login",style: TextStyle(
                        fontSize: 17 ,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                  ),),

                    ),

                  ),
                ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have Account?", style: TextStyle(
                      fontSize: 15 ,
                      color: Colors.grey,
                    ),),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),);
                      },
                      child: Text("Sign up", style: TextStyle(
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
        ),
      ),
    );
  }
}
