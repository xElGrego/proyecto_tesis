class TejidosAnimalesInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  TejidosAnimalesInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<TejidosAnimalesInfo> tejidosAnimalsList = [
  TejidosAnimalesInfo(
   
    title: 'Epitelial',
    image: "assets/img/tejidos/tejido_animal/epitelial.gif",
    concept:
        "Este tejido recubre las superficies internas y externas de los órganos; se comporta como una barrera que controla lo que entra y sale del cuerpo, forma membranas que recubren el cuerpo de los animales y sus cavidades internas.",
    
  ),
 TejidosAnimalesInfo(
   
    title: 'Conectivo',
    concept:
        "Este tejido se encuentra distribuido por el cuerpo específicamente en los tendones, ligamentos y huesos, realiza funciones de unión y soporte. ",
    image: "assets/img/tejidos/tejido_animal/conectivo.jfif",
  ),
   TejidosAnimalesInfo(
   
    title: 'Muscular',
    concept:
        "Este tejido es el componente principal de los músculos; es el responsable del movimiento de las diferentes partes del cuerpo gracias a una propiedad que tienen las células denominada contracción muscular. Sus células son alargadas y se denominan fibras musculares.",
    image: "assets/img/tejidos/tejido_animal/muscular.jpg",
  ),
   TejidosAnimalesInfo(
   
    title: 'Nervioso',
    concept:
        "Este tejido se encarga de recoger la información y de transmitirla a determinados lugares del cuerpo para elaborar las respuestas adecuadas, forma el encéfalo, la médula espinal y los nervios. Las principales células nerviosas son las neuronas y en el espacio entre ellas se encuentran las células gliales, que realizan funciones de soporte, defensa y nutrición.",
    image: "assets/img/tejidos/tejido_animal/nervioso.jpeg",
  ),

  
];
