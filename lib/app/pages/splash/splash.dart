import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/pages/home/home_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .6,
                child: FlutterLogo(size: 400),
              ),
            ),
            Spacer(),
            Text("Universidad de Guayaquil"),
            Text("Xiomara Calderón"),
            Text("Bella Figueroa"),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
