import 'package:demo_app/SignIn/LogIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mydrawer extends StatelessWidget {
  bool showspiner = false;
  final url = 'https://cutewallpaper.org/21/acer-predator-wallpaper/Directed-by-Zombie-Acer-Predator-Directors-Cut.jpg';
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Container(
        // color: CupertinoColors.extraLightBackgroundGray,
        child: ListView(
          children: [ DrawerHeader(

            padding: EdgeInsets.zero,
            child : UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: CupertinoColors.black
              ),
              margin: EdgeInsets.zero,
              accountName: Text('vivek sharma'),
              accountEmail: Text('vs696971@gmail.com',),
               arrowColor: Colors.red,
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(url)),),

          ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: (){

               _auth.signOut();
               Navigator.pushNamed(context, LoginPage.id);
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black54
                ),
              child: Text('Sign Out'),
              )
            )
],
        ),

      ),

    );
  }
}
