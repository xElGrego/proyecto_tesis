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

List<BacteriaNutricionInfo> bacteriaList = [
  BacteriaNutricionInfo(
   
    title: 'Bacterias autótrofas ',
    image: 'assets/img/planets/mercury.png',
    concept:
        "Son aquellas que producen o sintetizan sus propias sustancias a partir de fuentes inorgánicas como la luz del Sol; por ello se denominan fotosintéticas. ",
    
    object3d: "assets/3d/mercurio/jupiter.obj",
  ),
 BacteriaNutricionInfo(
   
    title: 'Bacterias heterótrofas ',
    image: 'assets/img/planets/mercury.png',
    concept:
        " Son aquellas que se alimentan a partir de otros seres vivos. La mayoría de las especies bacterianas tiene este tipo de nutrición y proliferan en ambientes con gran cantidad de materia orgánica acumulada, actúan como descomponedoras y hacen que los nutrientes estén disponibles para los demás seres vivos. ",

    object3d: "assets/3d/mercurio/jupiter.obj",
  ),
];
