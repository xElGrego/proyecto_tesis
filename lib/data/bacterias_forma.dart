class BacteriaFormaInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  BacteriaFormaInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<BacteriaFormaInfo> bacteriaFormaList = [
  BacteriaFormaInfo(
   
    title: 'Cocos',
    image: "assets/img/bacterias/bacteria_forma/cocos.jpg",
    concept:
        "Los cocos son bacterias con forma esférica; se reúnen en dos formas, los estafilococos en cúmulos y los estreptococos en hileras, un ejemplo es el Staphylococcus aureus, que causa infecciones en la piel.",
    
  ),
 BacteriaFormaInfo(
   
    title: 'Bacilos',
    concept:
        "Los espirilos son bacterias con forma de bastón y de gran tamaño, su membrana se prolonga en varios flagelos. Son patógenas, por ejemplo, el Helicobacter pylori, causante de la úlcera gástrica.",
    image: "assets/img/bacterias/bacteria_forma/bacilos.jpg",
  ),
   BacteriaFormaInfo(
   
    title: 'Espirilos',
    concept:
        " Los bacilos son bacterias con forma de bastón; algunas de ellas causan infecciones, pero otras son muy útiles en la producción de antibióticos como la bacitracina y la producción de alimentos lácteos.",
    image: "assets/img/bacterias/bacteria_forma/espirilos.jpg",
  ),
   BacteriaFormaInfo(
   
    title: 'Espiroquetas',
    concept:
        "Las espiroquetas son bacterias filiformes, es decir, con forma de hilo, tienen apariencia de espiral y presentan flagelos que les permiten realizar diferentes tipos de movimiento. Un ejemplo es el Treponema pallidium, causante de la sífilis.",
    image: "assets/img/bacterias/bacteria_forma/espiroquetas.jpg",
  ),
   BacteriaFormaInfo(
   
    title: 'Vibriones',
    concept:
        "Los vibriones son bacterias con forma de bacilo corto; poseen un único flagelo que les permite moverse con agilidad y su respiración es de tipo fermentativo. La bacteria más conocida de este grupo es la Vibrio cholerae, causante del cólera.",
    image: "assets/img/bacterias/bacteria_forma/vibriones.jpg",
  ),
  
];
