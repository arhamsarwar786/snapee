import 'dart:async';

import 'package:flutter/material.dart';
import 'package:snape_application/Home/banner1.dart';
// import 'package:snape_application/Home/home.dart';
// import 'package:snape_application/authScreen/Login/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // ignore: override_on_non_overriding_member
  startTime() {
    setState(() {});
    var duration = Duration(seconds: 5);
    return Timer(duration, nav);
  }

  void nav() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/splash.jpeg',
        height: 300,
        width: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
