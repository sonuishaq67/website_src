import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

dynamic bottomAppBar(BuildContext context)=>BottomAppBar(
            color: Colors.red,
          child: Row(
        children: [
          Spacer(),
          IconButton(icon: Icon(Icons.alarm_on_sharp), onPressed: () => Navigator.of(context).pushNamed('/about')
          ),
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
var textStyleHeading=TextStyle(color: Colors.white,fontSize: 40);

var textStyleP=TextStyle(color: Colors.red,fontSize: 26);