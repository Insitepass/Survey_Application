import "package:flutter/material.dart";
import 'login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFE6E3DD)),
        home: LoginPage());
  }
}