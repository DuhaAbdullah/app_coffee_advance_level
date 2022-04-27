import 'package:app_coffee_advance_level/packages/pages/home/home.dart';
import 'package:app_coffee_advance_level/packages/pages/splash/views/body.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Map<String, WidgetBuilder> route = {
    PageHome.id: (context) => const PageHome(),
    PageSplash.id: (context) => const PageSplash(),
  };
}
