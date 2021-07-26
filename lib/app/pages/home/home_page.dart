import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
              onPressed:()=> Get.to(HomePageDetails()),
              child: Text('Planetas'),
            ),
           ElevatedButton(
              onPressed: () {},
              child: Text('Cuerpo'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Otra opcion'),
            ),
          ],
        ),
      ),
    );
  }
}
