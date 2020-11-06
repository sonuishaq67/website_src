import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

dynamic bottomAppBar(BuildContext context) => BottomAppBar(
      color: Colors.red,
      child: Row(
        children: [
          Spacer(),
          IconButton(
              icon: Icon(Icons.alarm_on_sharp),
              onPressed: () => Navigator.of(context).pushNamed('/about')),
          Spacer(),
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Spacer(),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          Spacer(),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          Spacer(),
        ],
      ),
    );
var textStyleHeading = TextStyle(color: Colors.white, fontSize: 40);

dynamic textStyleP(Color color) => TextStyle(color: color, fontSize: 26);

var aboutList = [
  "Hi I'm Ishaq, \nI'm a 18 year old sophomore at MSRIT.",
  "I started development since May 2020 ",
  "I use Arch GNU/Linux as my daily driver \nand a LTS distro",
  "I mostly use C, java, python and dart for development\n",
  "Know me?",
  "Nice.",
  "Don't?",
  ""
];
