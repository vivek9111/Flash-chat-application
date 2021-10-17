import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/Theme.dart';
import 'package:demo_app/Notification/Notification.dart';

class Noticepage extends StatefulWidget {


  @override
  _NoticepageState createState() => _NoticepageState();
}

class _NoticepageState extends State<Noticepage> {
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
            debugShowCheckedModeBanner: false,
           theme: MyTheme.darkTheme(context),
      home: SafeArea(

          child: Scaffold(
            appBar: AppBar(
             leading: Icon(CupertinoIcons.back),
              title: Text('Activity',style: TextStyle(letterSpacing: 2),),
              // actions: <Widget>[
              //   IconButton(icon: Icon(CupertinoIcons.settings,color: Colors.white,), onPressed:null)
              // ],
            ),
            body:SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,0,30,0),
                child: Divider(color: Colors.white,),
              ),
            ),
            bottomSheet: InkWell(
             onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context) => notification())),
              child: Container(
                color: CupertinoColors.black,
                width: double.infinity,
                height: 40,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,7,0,0),
                      child: Text('Send Notification', style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'Raleway',letterSpacing: 2),textAlign: TextAlign.center,),
                    ),

                  ],
                ),
              ),
            ),

          ),
        ),

    );
  }
}
