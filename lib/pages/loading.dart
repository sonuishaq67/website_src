import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void waitForIt() async {
    await new Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
    waitForIt();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: HexColor('#000000'),
            body: SpinKitDoubleBounce(
                  color: Colors.white,
                  size: 35.0,
                ),
            ),

        ),
      );
  }
}

