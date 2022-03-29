import 'package:flutter/material.dart';
import 'package:multi_page/ScreenA.dart';
import 'package:multi_page/ScreenB.dart';
import 'package:multi_page/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
