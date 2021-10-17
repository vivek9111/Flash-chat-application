import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyTheme{
      static ThemeData darkTheme(BuildContext context) => ThemeData(

            inputDecorationTheme: InputDecorationTheme(fillColor: Colors.white),
            primarySwatch: Colors.red,
            canvasColor: Color(0xFF111111),
            fontFamily: 'Raleway',
            dividerColor: (Colors.white),
            scaffoldBackgroundColor: CupertinoColors.black,
            iconTheme: IconThemeData(color: CupertinoColors.activeBlue),
            appBarTheme: AppBarTheme(

              // toolbarTextStyle: TextStyle(color: CupertinoColors.systemRed,fontFamily: 'Raleway',letterSpacing: 3,fontWeight: FontWeight.bold),
              // titleTextStyle: TextStyle(color: CupertinoColors.systemRed,fontFamily: 'Raleway',letterSpacing: 3,fontWeight: FontWeight.bold),
              elevation: 0.0,
              centerTitle: true,
            color: CupertinoColors.black,


          )

      );




}