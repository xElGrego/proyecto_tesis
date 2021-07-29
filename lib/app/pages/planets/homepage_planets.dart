import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:proyecto_tesis/data/planetas.dart';

import '../../../const.dart';
import 'details_planets.dart';

class HomePagePlanets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Planetas',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 34,
                  color: Color(0xff47455f),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                height: 500,
                padding: EdgeInsets.only(left: 16),
                child: Swiper(
                  onTap: (index) {
                    print(index);
                  },
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.teal,
                      activeColor: Colors.white,
                      //space: 3.0   Espacio entre las bolitas
                      activeSize: 15.0,
                    ),
                  ),
                  itemCount: planetsList.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPlanets(
                              planetinfo: planetsList[index] ,
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 100.0,
                              ),
                              Card(
                                elevation: 5.0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 40.0,
                                    left: 20.0,
                                    bottom: 80.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 100.0),
                                      Text(
                                        planetsList[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 38,
                                          color: Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Conoce más',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(
                                            width: 12.0,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            left: 36.0,
                            top: 55.0,
                            child: Hero(
                              tag: planetsList[index].position,
                              child: Image.asset(
                                planetsList[index].iconImage,
                                height: 180.0,
                                alignment: Alignment.center,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}