import 'package:flutter/material.dart';

class ActividadBacteriasForma extends StatefulWidget {
  @override
  _HomePageStateActividadBacteriasForma createState() => _HomePageStateActividadBacteriasForma();
}

class _HomePageStateActividadBacteriasForma extends State<ActividadBacteriasForma> {
  List<ItemModelBacteriasForma> items;
  List<ItemModelBacteriasForma> items2;

  int score;
  bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModelBacteriasForma(
          imagen: "assets/img/bacterias/bacteria_forma/cocos.jpg", name: "Cocos", value: "Cocos"),
      ItemModelBacteriasForma(
          imagen: "assets/img/bacterias/bacteria_forma/bacilos.jpg",
          name: "Bacilos",
          value: "Bacilos"),
      ItemModelBacteriasForma(
          imagen: "assets/img/bacterias/bacteria_forma/espirilos.jpg",
          name: "Espirilos",
          value: "Espirilos"),
      ItemModelBacteriasForma(
          imagen: "assets/img/bacterias/bacteria_forma/espiroquetas.jpg",
          name: "Espiroquetas",
          value: "Espiroquetas"),
      ItemModelBacteriasForma(
          imagen: "assets/img/bacterias/bacteria_forma/vibriones.jpg",
          name: "Vibriones",
          value: "Vibriones"),
    ];
    items2 = List<ItemModelBacteriasForma>.from(items);
    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Actividad',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(children: [
              TextSpan(text: "Puntaje: "),
              TextSpan(
                  text: "$score",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ))
            ])),
            if (!gameOver)
              Row(
                children: <Widget>[
                  Column(
                      children: items.map((item) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      margin: const EdgeInsets.all(8.0),
                      child: Draggable<ItemModelBacteriasForma>(
                        data: item,
                        childWhenDragging: Image.asset(
                          item.imagen,
                          fit: BoxFit.cover,
                          height: 80,
                        ),
                        feedback: Image.asset(
                          item.imagen,
                          fit: BoxFit.cover,
                          height: 80,
                        ),
                        child: Image.asset(
                          item.imagen,
                          fit: BoxFit.cover,
                          height: 80,
                        ),
                      ),
                    );
                  }).toList()),
                  Spacer(),
                  Column(
                      children: items2.map((item) {
                    return DragTarget<ItemModelBacteriasForma>(
                      onAccept: (receivedItem) {
                        if (item.value == receivedItem.value) {
                          setState(() {
                            items.remove(receivedItem);
                            items2.remove(item);
                            score += 10;
                            item.accepting = false;
                          });
                        } else {
                          setState(() {
                            score -= 5;
                            item.accepting = false;
                          });
                        }
                      },
                      onLeave: (receivedItem) {
                        setState(() {
                          item.accepting = false;
                        });
                      },
                      onWillAccept: (receivedItem) {
                        setState(() {
                          item.accepting = true;
                        });
                        return true;
                      },
                      builder: (context, acceptedItems, rejectedItem) => Container(
                        color: item.accepting ? Colors.red : Colors.teal,
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(8.0),
                        child: Text(
                          item.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    );
                  }).toList()),
                ],
              ),
            if (gameOver)
              Text(
                "Juego terminado",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            if (gameOver)
              Center(
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  child: Text("New Game"),
                  onPressed: () {
                    initGame();
                    setState(() {});
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}

class ItemModelBacteriasForma {
  final String name;
  final String value;
  final String imagen;
  bool accepting;

  ItemModelBacteriasForma({this.name, this.value, this.imagen, this.accepting = false});
}
