import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:personal_website/constantsIUse/freqConstants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:personal_website/constantsIUse/functions.dart';
import '../constantsIUse/freqConstants.dart';
import 'package:delayed_display/delayed_display.dart';


class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

  @override
  Widget build(BuildContext context) {
    var thatconstsize=MediaQuery.of(context).size.height/10;
    return MaterialApp(
      title: 'Little About me',
      color: Colors.red,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('about',style: textStyleHeading,),centerTitle: true,backgroundColor: Colors.red,),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height/10),
              child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   TypewriterAnimatedTextKit(
                      speed: Duration(milliseconds: 150),
                      text:aboutList,
                      textStyle: textStyleP(Colors.green),
                      textAlign: TextAlign.center,
                      isRepeatingAnimation: false,
                     pause: Duration(milliseconds:  100),
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: timeToWait(aboutList)),
                      child: Text(
                        "Hello",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // SizedBox(height: thatconstsize,width: thatconstsize,),
                    // Text("I've started development since May 2020 ",style: textStylePG,),
                    // SizedBox(height: thatconstsize,width: thatconstsize,),
                    // Image.network('https://randomtestbucket1043.s3.amazonaws.com/index.jpg',height: thatconstsize*3,width: thatconstsize*3,),
                    // SizedBox(height: thatconstsize,width: thatconstsize,),
                  ],
                ),
            ),
          ),
        ),
        bottomNavigationBar: bottomAppBar(context),
      ),
    );
  }
}
