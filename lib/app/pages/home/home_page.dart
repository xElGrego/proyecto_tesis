import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/pages/bacterias/home_bacterias.dart';
import 'package:proyecto_tesis/app/pages/planets/homepage_planets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nombre de la app"),
      ),
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
              onPressed: () {},
              child: Text('Zona 3D'),
            ),
          ],
        ),
      ),
    );
  }
}
