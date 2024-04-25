import 'package:flutter/material.dart';

class AppRouter {
  static buildRoute(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
