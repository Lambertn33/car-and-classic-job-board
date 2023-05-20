import 'package:careers_app/models/opening.model.dart';
import 'package:careers_app/screens/homepage.dart';
import 'package:careers_app/screens/openings/opening.dart';
import 'package:careers_app/screens/openings/openings.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const Homepage());
      case "/openings":
        return MaterialPageRoute(builder: (context) => const OpeningsListPage());
      case "opening":
        final Opening selectedOpening = settings.arguments as Opening;
        return MaterialPageRoute(builder: (context) => OpeningDetails(opening: selectedOpening), settings: settings);
      default:
        return MaterialPageRoute(builder: (context) => const Homepage());
    }
  }
}