import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/pages/bacterias/home_bacterias.dart';
import 'package:proyecto_tesis/app/pages/planets/homepage_planets.dart';
import 'package:proyecto_tesis/app/pages/zone_3d/homepage_zone3d.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "El Mundo de la Ciencia",
          textAlign:TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25
          ),
        ),
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePagePlanets(),
                    ),
                  );
                },
                child: Text('Planetas'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageBacteries(),
                    ),
                  );
                },
                child: Text('Bacterias'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageZone3d(),
                    ),
                  );
                },
                child: Text('Zona 3D'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
