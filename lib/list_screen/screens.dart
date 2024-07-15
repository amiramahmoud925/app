import 'package:app/list_screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:app/Home/home_screen.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {

  int _index = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List screens = [
    HomeScreen(),

    Container(
      color: Colors.cyanAccent,
      child: Center(child: Text("Menu" , style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30
      ),)),
    ),


    Container(
      color: Colors.cyanAccent,
      child: Center(child: Text("Shopping Cart" , style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30
      ),)),
    ),

    Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: _buildAppBar(),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text('Drawer Header',style: TextStyle(
                    color: Colors.black,
                    fontSize: 30
                ),),
              ),
              ListTile(
                title: const Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),

              ListTile(
                title: const Text('Menu'),
                leading: Icon(Icons.menu),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),

              ListTile(
                title: const Text('cart'),
                leading: Icon(Icons.shopping_cart),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),

              ListTile(
                title: const Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),

            ],
          ),
        ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.menu, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
         _index = index;
             setState(() {

             });
        },
      ),
      body: screens[_index],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: (){
          _scaffoldKey.currentState!.openDrawer();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.menu_rounded , color: Colors.black,),
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on , size: 25,color: Colors.black,),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("El Qalyubia" , style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                  SizedBox(width: 10,),
                  Icon(Icons.keyboard_arrow_down_outlined, size: 20, color: Colors.green,),
                ],
              ),
              SizedBox(height: 5,),
              Text("Banha City" , style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),)
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.search , color: Colors.black,),

          ),
        ),
      ],
    );
  }


}
