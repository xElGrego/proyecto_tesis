import 'package:flutter/material.dart';
import 'package:proyecto_tesis/app/pages/planets/planets_actividad.dart';
import 'package:proyecto_tesis/app/pages/zone_3d/planets/model_planet.dart';
import 'package:proyecto_tesis/data/planetas.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../const.dart';

class DetailsPlanets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: planetsList.length,
        itemBuilder: (context, index) {
          return SafeArea(
            bottom: false,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    planetsList[index].name,
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 56,
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    'Planetas',
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 31,
                                      color: primaryTextColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Divider(color: Colors.black38),
                                  SizedBox(height: 32),
                                  Text(
                                    planetsList[index].description ?? '',
                                    maxLines: 20,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 20,
                                      color: contentTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Divider(color: Colors.black38),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Planets3D(
                                                planetinfo: planetsList[index],
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Ver objecto 3d",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      if (index >= planetsList.length - 1)
                                        Column(
                                          children: [
                                            ElevatedButton(
                                              child: Text(
                                                'Actividad 1',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => HomePlanetsActividad(),
                                                  ),
                                                );
                                              },
                                            ),
                                            ElevatedButton(
                                              child: Text(
                                                'Actividad 2',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              onPressed: () async {
                                                const url =
                                                    'https://es.educaplay.com/juego/10264438-planetas.html';
                                                if (await canLaunch(url) != null) {
                                                  await launch(url);
                                                } else {
                                                  throw {print("Valimos")};
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 35.0, left: 20),
                              child: Text(
                                'Galeria',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 25,
                                  color: const Color(0xff47455f),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 25.0,
                            bottom: 25.0,
                          ),
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: planetsList[index].images.length,
                            itemBuilder: (context, i) {
                              return Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: FadeInImage.assetNetwork(
                                    placeholder: 'assets/loading.gif',
                                    image: planetsList[index].images[i],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -110,
                    child: Hero(
                      child: Image.asset(planetsList[index].iconImage),
                      tag: planetsList[index].position.toString(),
                    ),
                    right: -184,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
