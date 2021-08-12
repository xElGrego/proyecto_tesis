class BacteriaNutricionInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  BacteriaNutricionInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<BacteriaNutricionInfo> bacteriaNutricionList = [
  BacteriaNutricionInfo(
   
    title: 'Bacterias autótrofas ',
    image: "assets/img/bacterias/bacteria_nutricion/autotrofas.jpg",
    concept:
        "Son aquellas que producen o sintetizan sus propias sustancias a partir de fuentes inorgánicas como la luz del Sol; por ello se denominan fotosintéticas. ",
    
  ),
 BacteriaNutricionInfo(
   
    title: 'Bacterias heterótrofas ',
    concept:
        " Son aquellas que se alimentan a partir de otros seres vivos. La mayoría de las especies bacterianas tiene este tipo de nutrición y proliferan en ambientes con gran cantidad de materia orgánica acumulada, actúan como descomponedoras y hacen que los nutrientes estén disponibles para los demás seres vivos. ",
    image: "assets/img/bacterias/bacteria_nutricion/heterotrofas.jpg",
  ),
];
