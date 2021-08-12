import 'package:flutter/material.dart';

import 'app/pages/bacterias/details_bacterias_forma.dart';
import 'app/pages/bacterias/details_bacterias_nutricion.dart';
import 'app/pages/contaminacion_agua/contaminacion_agua.dart';
import 'app/pages/planets/homepage_planets.dart';
import 'app/pages/tejidos/details_tejidos_animals.dart';
import 'app/pages/tejidos/details_tejidos_vegetales.dart';

Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);


Color verde = Color(0xFF81F79F);


final temas = [
  {
    "label": 'Planetas',
    "arrayMappedname": planetas
  },
  {
    "label": 'Tejidos',
    "arrayMappedname": tejidos
  },
  {
    "label": 'Bacterias',
    "arrayMappedname": bacterias
  },

  {
    "label": 'Contaminacion del agua',
    "arrayMappedname": contaminacion
  },

  {
    "label": 'Áreas protegidas',
    "arrayMappedname": areasProtegidas
  },

];

List<Map<String, Object>> planetas = [
 {
   "category": "Planetas",
   "label": "Planetas",
   "image": "assets/img/planets/home_planeta.jpg",
   "widget": HomePagePlanets(),
 },
];

List<Map<String, Object>> tejidos = [
  {
   "category": "Tejidos",
   "label": "Tejido Vegetal",
   "image": "assets/img/tejidos/tejido_vegetal/tejido_vegetal_home.jpg",
   "widget": TejidosVegetalesDetails(),

 },
  {
   "category": "Tejidos",
   "label": "Tejido Animal",
   "image": "assets/img/tejidos/tejido_animal/tejido_animal_home.jfif",
   "widget":TejidosAnimalsDetails(),

 }
];

List<Map<String, Object>> bacterias = [
 {
   "category": "Bacterias",
   "label": "Bacterias según su forma",
   "image": "assets/img/bacterias/bacteria_forma/bacteria_forma.jpg",
   "widget": BacteriaFormaDetail(),
 },
  {
   "category": "Bacterias",
   "label": "Bacterias según su nutrición",
   "image": "assets/img/bacterias/bacteria_nutricion/bacteria_nutricion.jpg",
   "widget": BacteriaNutricionDetail(),
 },

];

List<Map<String, Object>> contaminacion = [
 {
   "category": "Contaminacion",
   "label": "Contaminacion del Agua",
   "image": "assets/img/contaminacion/agua_home.jpg",
   "widget": ContaminacionAguaDetails(),
 },

];

List<Map<String, Object>> areasProtegidas = [
 {
   "category": "Areas Protegidas",
   "label": "Áreas protegidas como estrategias de conservación",
   "image": "assets/img/bacterias/bacteria_forma/bacteria_forma.jpg",
   "widget": BacteriaFormaDetail(),
 },

];