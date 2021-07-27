import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Bacteries3D extends StatefulWidget {
  @override
  _Bacteries3DState createState() => _Bacteries3DState();
}

class _Bacteries3DState extends State<Bacteries3D> {
  Object jet;
  Object shark;
  @override
  void initState() {
    jet = Object(fileName: "assets/3d/jet/Jet.obj");
    shark = Object(fileName: "assets/3d/shark/shark.obj");
    shark.rotation.setValues(0, 90, 0);
    shark.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Bacterias 3D",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(shark);
                  scene.camera.zoom = 10;
                },
              ),
            ),
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(jet);
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
