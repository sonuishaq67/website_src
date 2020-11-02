import 'package:flutter/material.dart';
import 'package:personal_website/pages/loading.dart';
import 'package:personal_website/pages/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  ));
}
