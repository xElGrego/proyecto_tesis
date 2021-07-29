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
          //Crea un widget el tamaño del hijo es la mitad de la fraccion del total espacio disponible
              child: FractionallySizedBox(
                widthFactor: .6,
                child: FlutterLogo(size: 400),
              ),
            ),

            Text(
              "Universidad de Guayaquil",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
             Spacer(),
            Text(
              "Xiomara Calderón",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Bella Figueroa",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
