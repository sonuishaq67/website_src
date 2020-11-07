import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/constantsIUse/freqConstants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:personal_website/constantsIUse/functions.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constantsIUse/freqConstants.dart';
import 'package:delayed_display/delayed_display.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    var thatconstsize = MediaQuery.of(context).size.height / 10;
    return MaterialApp(
      title: 'Little About me',
      color: Colors.red,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'about',
            style: textStyleHeading,
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TypewriterAnimatedTextKit(
                    speed: Duration(milliseconds: 125),
                    text: aboutList,
                    textStyle: textStyleP(Colors.green),
                    textAlign: TextAlign.center,
                    isRepeatingAnimation: false,
                    pause: Duration(milliseconds: 100),
                  ),
                  DelayedDisplay(
                    delay: Duration(seconds: timeToWait(aboutList)),
                    child: Center(
                      child: Row(
                        children: [
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          FlatButton.icon(
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ),
                            onPressed: () =>
                                launch('https://github.com/sonuishaq67'),
                            label: Text(""),
                          ),
                          Spacer(),
                          FlatButton.icon(
                            icon: Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                            ),
                            onPressed: () => launch(
                                'https://www.linkedin.com/in/sonuishaq67/'),
                            label: Text(""),
                          ),
                          Spacer(),
                          FlatButton.icon(
                            icon: Icon(
                              FontAwesomeIcons.stackOverflow,
                              color: Colors.white,
                            ),
                            onPressed: () => launch(
                                'https://stackoverflow.com/users/12938781/sonu-ishaq'),
                            label: Text(""),
                          ),
                          Spacer(),
                          FlatButton.icon(
                            icon: Icon(
                              FontAwesomeIcons.telegram,
                              color: Colors.white,
                            ),
                            onPressed: () =>
                                launch('https://tx.me/superuser67'),
                            label: Text(""),
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
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
