import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/constantsIUse/freqConstants.dart';
import 'package:personal_website/constantsIUse/functions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String osUsed = os();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'si67',
      color: Colors.red,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            '$osUsed',
            style: textStyleHeading,
          ),
        ),
        bottomNavigationBar: bottomAppBar(context),
      ),
    );
  }
}
