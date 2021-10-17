import 'package:demo_app/ChatPages/Search.dart';
import 'package:demo_app/Extra/drawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {

  static const String id = 'Homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;
   User loggedinuser;

   @override
   void initstate(){
     super.initState();
     getuser();
   }

   void getuser() async{
   try {
     final user = await _auth.currentUser;
     if (user != null) {
       loggedinuser = user;
       print(loggedinuser.email);
     }
   }
   catch(e){
     print(e);
   }
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Mydrawer(),
          appBar:PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child:   AppBar(

              // leading: Padding(
              //   padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              //   child: Icon(Icons.menu),
              // ),

              backgroundColor:  Colors.black87,
              title: Padding
                ( padding: EdgeInsets.fromLTRB(50, 20, 0, 0),
                  child: Text('Pegion',style: TextStyle(color: Colors.white),)),

              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                  child: IconButton(icon: Icon(Icons.perm_identity), onPressed: (){Navigator.pushNamed(context, SearchPage.id);},

                  ),
                )],
            ),
          ),

          body: Container(

          ),
        )
    );
  }
}

