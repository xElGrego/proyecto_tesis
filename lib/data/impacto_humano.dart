class ImpactoHumanoInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  ImpactoHumanoInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<ImpactoHumanoInfo> impactoHumanoList = [
  ImpactoHumanoInfo(
    title: 'Historia de la vida',
    image: "assets/img/tejidos/tejido_vegetal/celulas_vivas.jpg",
    concept:
        "La característica que mejor identifica a la Tierra es la existencia de vida. La paleontología es la ciencia que estudia los seres vivos del pasado. Estos han ido diversificándose desde su aparición, como atestiguan los fósiles. ",
    
  ),
 ImpactoHumanoInfo(
    title: 'Los primeros seres vivos',
    concept:
        "Los restos fósiles más antiguos son estromatolitos fabricados por microorganismos de hace 3500 Ma. Probablemente, los primeros seres vivos fueron similares a las bacterias; es decir, células procariotas. La evolución de esos microorganismos debió de ser lenta, pues los primeros restos de células eucariotas, más avanzadas, datan de hace unos 2100 millones de años.",
    image: "assets/img/tejidos/tejido_vegetal/celulas_muertas.jpg",
  ),

   ImpactoHumanoInfo(
    title: 'La diversificación de la vida acuática ',
    concept:
        "A lo largo de la era precámbrica, microorganismos fotosintéticos y algas liberaron grandes cantidades de oxígeno, transformando así la atmósfera terrestre. Hace unos 600 Ma se produjo un aumento considerable en la cantidad de ese gas. Esta parece ser la causa que propició la evolución, en relativamente poco tiempo, de una gran cantidad de animales invertebrados que cubrieron su cuerpo con conchas y caparazones.",
    image: "assets/img/tejidos/tejido_vegetal/celulas_muertas.jpg",
  ),
 
  
];
