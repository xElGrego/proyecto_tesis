import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/pages/zone_3d/planets/planets_3d.dart';

import 'bacterias/bacterias_3d.dart';

class HomePageZone3d extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      builder: (context) => Planets3D(),
                    ),
                  );
                },
                child: Text('Planetas 3D'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bacteries3D(),
                    ),
                  );
                },
                child: Text('Bacterias 3d'),
              ),
            ],
          ),
        ),
    );
  }
}