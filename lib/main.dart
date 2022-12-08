import 'package:flutter/material.dart';
import 'package:recipes/models/user_model.dart';
import 'package:recipes/screens/OneHomePage.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
    initialRoute: 'onehome',
    routes: {
      'home':(context) => MyHomePage(),
      'onehome':(context) => OneHomePage(),
    },
  ));
}
