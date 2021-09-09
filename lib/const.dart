import 'package:flutter/material.dart';

import 'app/pages/areas_protegidas/areas_protegidas.dart';
import 'app/pages/bacterias/details_bacterias_forma.dart';
import 'app/pages/bacterias/details_bacterias_nutricion.dart';
import 'app/pages/cambio_climatico/cambio_climatico.dart';
import 'app/pages/carbono/carbono_details.dart';
import 'app/pages/contaminacion_agua/contaminacion_agua.dart';
import 'app/pages/corrientes_marinas/corrientes_marinas_details.dart';
import 'app/pages/impacto_humano/impacto_humano.details.dart';
import 'app/pages/nevados/nevados_details.dart';
import 'app/pages/planets/details_planets.dart';
import 'app/pages/tejidos/details_tejidos_animals.dart';
import 'app/pages/tejidos/details_tejidos_vegetales.dart';


/* Colores de la app */
Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);
Color verde = Color(0xFF81F79F);




/* Temas */

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
    "label": 'El elemento carbono',
    "arrayMappedname": carbono
  },

  {
    "label": 'Áreas protegidas',
    "arrayMappedname": areasProtegidas
  },

  {
    "label": 'El cambio climático',
    "arrayMappedname": cambioClimatico
  },

  {
    "label": 'Volcanes del Ecuador',
    "arrayMappedname": nevados
  },
 
  {
    "label": 'Impacto Humano',
    "arrayMappedname": impactoHumano
  },

  {
    "label": 'Corrientes Marinas',
    "arrayMappedname": corrientesMarinas
  }, 
];

List<Map<String, Object>> planetas = [
 {
   "category": "Planetas",
   "label": "Planetas",
   "image": "assets/img/planets/home_planeta.jpg",
   "widget": DetailsPlanets(),
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
   "label": "Contaminación del agua",
   "image": "assets/img/contaminacion/agua_home.jpg",
   "widget": ContaminacionAguaDetails(),
 },

];

List<Map<String, Object>> areasProtegidas = [
 {
   "category": "Areas Protegidas",
   "label": "Áreas protegidas como estrategias de conservación",
   "image": "assets/img/areas_protegidas/areas_protegidas_home.jpg",
   "widget": AreasProtegidasDetails(),
 },

];


List<Map<String, Object>> carbono = [
 {
   "category": "Carbono",
   "label": "Carbono",
   "image": "assets/img/carbono/carbono_home.jpg",
   "widget": CarbonoDetails(),
 },
];

List<Map<String, Object>> cambioClimatico = [
 {
   "category": "El cambio climático",
   "label": "El Cambio Climático",
   "image": "assets/img/cambio_climatico/cambio_climatico_home.jfif",
   "widget": CambioClimaticoDetails(),
 },
];


List<Map<String, Object>> nevados = [
 {
   "category": "",
   "label": "Volcanes del Ecuador",
   "image": "assets/img/nevados/volanes_home.jpg",
   "widget": NevadosDetails(),
 },
];

 List<Map<String, Object>> impactoHumano = [
 {
   "category": "",
   "label": "Impacto Humano",
   "image": "assets/img/impacto_humano/impaco_humano_home.jpg",
   "widget": ImpactoHumanoDetails(),
 },
];

List<Map<String, Object>> corrientesMarinas = [
 {
   "category": "",
   "label": "Corrientes Marinas",
   "image": "assets/img/corrientes_marinas/home.jfif",
   "widget": CorrientesMarinasDetails(),
 },
]; 