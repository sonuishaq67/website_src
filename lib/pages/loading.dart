import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void waitForIt() async {
    await Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
    waitForIt();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'loading...',
      theme: new ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Center(
        child: Scaffold(
          backgroundColor: HexColor('#000000'),
            body: SpinKitDoubleBounce(
                  color: Colors.red[600],
                  size: 50.0,
                ),
            ),

        ),
      );
  }
}

