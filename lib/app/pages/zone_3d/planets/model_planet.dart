import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:proyecto_tesis/data/planetas.dart';

class Planets3D extends StatelessWidget {
  final PlanetInfo planetinfo;

  const Planets3D({Key key, this.planetinfo}) : super(key: key);

@override
  Widget build(BuildContext context) {
   
  Object objeto3d;
  objeto3d = Object(fileName: planetinfo.object3d);
 
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
         planetinfo.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
             Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(objeto3d);
                  scene.camera.zoom = 10;
                },
              ),
            ),   
          ],
        ),
      ),
    );
  }
 /*   @override
  void initState() {
    objeto3d = Object(fileName: planetinfo.iconImage);
    objeto3d.rotation.setValues(0, 90, 0);
    objeto3d.updateTransform();
    super.initState();
  }  */
}



              