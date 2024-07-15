import 'package:flutter/material.dart';
import 'package:app/Home/component.dart';
import 'package:app/Home/parts.dart';
import 'package:app/list_screen/screens.dart';
import 'package:app/list_screen/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:app/Home/horzintal listview .dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {

    Future.delayed(Duration(seconds: 1)).then((value) =>
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Screens(),
          ),
        ),
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

         body: buildBody(),


    );
  }

  Padding buildBody() {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:
                  Image.asset("assets/images/home.png",
                    cacheHeight: 135, cacheWidth: 400,),
                  ),

              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Popular Packs " , style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Spacer(),
                  Text("View All " , style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),

                ],
              ),
              SizedBox(height: 10,),

              Container(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) => _itemBuilder(),
                ),
              ),

              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Our New Items" , style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Spacer(),
                  Text("View All " , style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),

                ],
              ),
              SizedBox(height: 10,),

              Container(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) => _newitemBuilder(),
                ),
              ),

            ],
          ),
        ),
      );
  }

  Widget _itemBuilder() {
    return Row(
      children: [
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/apple.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("apple" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/banana.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Banana" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$45" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/Coconut.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Coconut" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$50" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$65" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/grapes.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Grapes" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$45" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$60" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/mango.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Mango" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/Peach.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Peach" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/pear.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("pear" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/pineapple.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("pineapple" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/watermelon.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Watermelon" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
      ],
    );

  }

  Widget _newitemBuilder() {
    return Row(
      children: [
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/watermelon.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("watermelon" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$55" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$70" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/pear.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("pear" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
        SizedBox(width: 1,),
        Container(
          height:200,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
                Container(
                  height:50,
                  width: 50,
                  child: Image.asset("assets/images/pineapple.png"),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("pineapple" , style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("is fresh and good", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),)
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text("\$35" , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(width: 4,),
                    Text("\$50" , style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough
                    ),),
                    Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add , color: Colors.white,),
                    )

                  ],
                )
              ],
            ),
          ),

        ),
      ],
    );
  }
}


