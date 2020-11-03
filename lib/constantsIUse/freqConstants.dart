import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var bottomAppBar=BottomAppBar(
  color: Colors.red,
  child: Row(
    children: [
      Spacer(),
      IconButton(icon: Icon(Icons.alarm_on_sharp), onPressed: () {}),
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