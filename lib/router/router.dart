import 'package:careers_app/screens/homepage.dart';
import 'package:careers_app/screens/openings/openings.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const Homepage());
      case "/openings":
        return MaterialPageRoute(builder: (context) => const OpeningsListPage());
      default:
        return MaterialPageRoute(builder: (context) => const Homepage());
    }
  }
}