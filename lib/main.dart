import 'package:careers_app/helpers/constants.dart';
import 'package:careers_app/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: Constants.primaryFont
      ),
      home: Scaffold(
        body: const Homepage(),
      ),
    );
  }
}