import 'package:flutter/material.dart';
import 'package:tasktracker/Auth/Login.dart';
import 'package:tasktracker/Template/Typography.dart';

import 'Template/Colors.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Tracker',
      theme: ThemeData(
        primaryColor: primary,
        fontFamily: primaryfont,
      ),
      home: Login(),
    );
  }
}
