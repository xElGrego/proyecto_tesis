class TejidosVegetalesInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  TejidosVegetalesInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<TejidosVegetalesInfo> tejidosvegetalesList = [
  TejidosVegetalesInfo(
   
    title: 'Células vivas',
    image: "assets/img/tejidos/tejido_vegetal/celulas_vivas.jpg",
    concept:
        "Encargadas del desarrollo de la planta, los procesos de fotosíntesis y respiración, la reserva de sustancias y la regeneración de tejidos.",
    
  ),
 TejidosVegetalesInfo(
   
    title: 'Células muertas',
    concept:
        "Son células con paredes engrosadas y de aspecto leñoso que dan soporte y resistencia a la planta.",
    image: "assets/img/tejidos/tejido_vegetal/celulas_muertas.jpg",
  ),
 
  
];
