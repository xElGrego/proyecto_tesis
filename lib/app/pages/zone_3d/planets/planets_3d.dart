import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Planets3D extends StatefulWidget {
  @override
  _Planets3DState createState() => _Planets3DState();
}

class _Planets3DState extends State<Planets3D> {
  Object earth;

  @override
  void initState() {
    earth = Object(fileName: "assets/3d/earth/Earth.obj");
    earth.rotation.setValues(0, 90, 0);
    earth.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Planets 3D",
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
                  scene.world.add(earth);
                  scene.camera.zoom = 10;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
