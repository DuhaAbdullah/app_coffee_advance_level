import 'dart:async';

import 'package:app_coffee_advance_level/packages/pages/home/home.dart';
import 'package:flutter/material.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({Key? key}) : super(key: key);
  static const String id = 'PageSplash';

  @override
  _PageSplashState createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      if (mounted) Navigator.pushReplacementNamed(context, PageHome.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}
