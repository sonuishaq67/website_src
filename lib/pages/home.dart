import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_detect/platform_detect.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String osUsed=os();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Welcome to my website'),centerTitle: true,backgroundColor: Colors.red,),
      body: Center(child: Text('$osUsed',style: TextStyle(color: Colors.white,fontSize: 40),),),
    );
  }
}

String os(){
  if(operatingSystem.isLinux)
    return "linux";
  else if(operatingSystem.isMac)
    return "mac";
  else if(operatingSystem.isUnix)
    return "unix";
  else
    return "Windows";
}