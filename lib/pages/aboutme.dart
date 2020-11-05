import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/constantsIUse/freqConstants.dart';

import '../constantsIUse/freqConstants.dart';



class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

  @override
  Widget build(BuildContext context) {
    var thatconstheight=MediaQuery.of(context).size.height/10;
    return MaterialApp(
      title: 'Little About me',
      color: Colors.red,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('A little about myself',style: textStyleHeading,),centerTitle: true,backgroundColor: Colors.red,),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height/10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem integer vitae justo eget magna fermentum iaculis. Habitasse platea dictumst vestibulum rhoncus est pellentesque. Posuere lorem ipsum dolor sit amet. Nec feugiat nisl pretium fusce. Sit amet nulla facilisi morbi tempus iaculis. Nisl nisi scelerisque eu ultrices vitae. Et malesuada fames ac turpis egestas. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum. Neque convallis a cras semper auctor neque vitae tempus quam. Dapibus ultrices in iaculis nunc sed augue. Id volutpat lacus laoreet non. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Ultrices neque ornare aenean euismod elementum nisi quis eleifend. Fusce id velit ut tortor pretium viverra. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi. Praesent tristique magna sit amet purus gravida. Nullam vehicula ipsum a arcu cursus vitae congue mauris.",style: textStyleP,),
                  SizedBox(height: thatconstheight,width: thatconstheight,),
                  Image.asset('index.jpg',height: thatconstheight*2,width: thatconstheight*2,),
                  SizedBox(height: thatconstheight,width: thatconstheight,),
                  Text('Currently studying at MSRIT',style: textStyleP,),
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
