import 'package:flutter/material.dart';

import 'package:proyecto_tesis/data/planetas.dart';

import 'model_planet.dart';

class HomePagePlanetModel extends StatelessWidget {
  final PlanetInfo planetinfo;

  const HomePagePlanetModel({Key key, this.planetinfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Planetas 3D",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: 8,
          separatorBuilder: (_, index) => Divider(),
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(planetsList[index].name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Planets3D(
                       planetinfo: planetsList[index] ,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
