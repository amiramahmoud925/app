import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:app/Home/home_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white54,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ],
            ),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Amira Mahmoud", style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("@eng amira")],
            ),
             SizedBox(height: 15,),
            Container(
              child: Expanded(
                  child: ListView(
                    children: [
                      Card(
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.privacy_tip_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Privacy',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                       SizedBox(height: 10,),
                      Card(
                        color: Colors.white70,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.history,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Purchase History',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                       SizedBox(height: 10,),
                      Card(
                        color: Colors.white70,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading:
                          Icon(Icons.help_outline, color: Colors.black54),
                          title: Text('Help & Support', style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                       SizedBox(height: 10,),
                      Card(
                        color: Colors.white70,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.privacy_tip_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                       SizedBox(height: 10,),
                      Card(
                        color: Colors.white70,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.add_reaction_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Invite a Friend',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                       SizedBox(height: 10,),
                      Card(
                        color: Colors.white70,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      )
                    ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
