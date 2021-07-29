import 'package:flutter/material.dart';
import 'package:proyecto_tesis/data/planetas.dart';

import '../../../const.dart';

class DetailsPlanets extends StatelessWidget {
  final PlanetInfo planetinfo;

  const DetailsPlanets({Key key, this.planetinfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                              planetinfo.name,
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
                              planetinfo.description ?? '',
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
                      itemCount: planetinfo.images.length,
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: FadeInImage.assetNetwork(
                              placeholder: 'assets/loading.gif',
                              image: planetinfo.images[index],
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
  }
}