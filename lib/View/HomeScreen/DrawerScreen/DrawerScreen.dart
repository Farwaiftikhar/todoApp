import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/app-images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Auth-Screen/Login.dart';
class DrawerScreen extends StatelessWidget {
   DrawerScreen({super.key});


  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign-out function
  Future<void> _signOut() async {
    try {
      await _auth.signOut();
      // After sign out, you can redirect user to login page or any other screen
      print("User signed out successfully");
    } catch (e) {
      print("Error signing out: $e");
    }
  }



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Farwa Iftikhar'),
              accountEmail: Text("farwaiftikhar12@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child:Image(image: AssetImage(AppImages.Profile,),
                height: 100,
                width: 100,
                fit: BoxFit.cover,),
          ),),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.Background2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: ()=> null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Shared'),
            onTap: ()=> null,
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text('Friend'),
            onTap: ()=> null,
          ),
          ListTile(

              leading: Icon(Icons.logout),
              title: Text('SignOut'),
            onTap: () async
            {
              await _signOut();
              // Optionally, you can navigate to login screen
              Navigator.pushReplacement(context, CupertinoPageRoute(builder: (contex) => Login()));
            },





          ),
        ],
      ),
    );
  }
}
