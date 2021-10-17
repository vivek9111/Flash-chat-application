import 'package:demo_app/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Profilepage extends StatefulWidget {
  const Profilepage({Key key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int pageIndex = 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.darkTheme(context),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('Profile'), leading: Icon(Icons.arrow_back_ios),),

        ),
      ),
    );
  }
}
