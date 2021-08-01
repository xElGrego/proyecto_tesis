import 'package:flutter/material.dart';

import 'app/pages/planets/homepage_planets.dart';

Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);


Color verde = Color(0xFF81F79F);


const temas = [
  {
    "label": 'Planetas',
    " planetas": planetas
  },
  {
    "label": 'Tejidos',
    "arrayMappedname": tejidos
  },
  {
    "label": 'Bacterias',
    "arrayMappedname": bacterias
  },

];

const planetas = [
 {
   "category": "Planetas",
   "label": "Planetas",
   "image": "assets/img/planets/mercury.png",
   "widget": HomePagePlanets

 },
];

const tejidos = [
  {
   "category": "Tejidos",
   "label": "Tejidos 1",
   "image": "assets/sofa-2.png",
 },
  {
   "category": "Sofa",
   "label": "Tejidos 2",
   "image": "assets/sofa-1.png",
 }
];

const bacterias = [
 {
   "category": "Bacterias",
   "label": "Bacterias 1",
   "image": "assets/cupboard-2.jpg",
 },
  {
   "category": "Bacterias",
   "label": "Bacterias 2",
   "image": "assets/cupboard-1.jpg",
 },
];