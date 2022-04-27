import 'package:app_coffee_advance_level/packages/components/app-bar/appbar_simple.dart';
import 'package:app_coffee_advance_level/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  static const String id = 'PageHome';
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarSimple(title: 'Home'),
      drawer: BodyDrawer(),
      body: Center(
        child: Text('Home '),
      ),
    );
  }
}
