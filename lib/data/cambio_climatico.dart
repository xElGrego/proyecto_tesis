class CambioClimaticoInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  CambioClimaticoInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<CambioClimaticoInfo> cambioclimaticoList = [
  CambioClimaticoInfo(
   
    title: 'El Clima Cambiante',
    image: "assets/img/cambio_climatico/clima_cambianto.jpg",
    concept:
        "El cambio climático que estamos experimentando, caracterizado por el aumento de la temperatura global y el descontrol en los periodos de lluvias y sequías, está relacionado con cambios en las dinámicas que generalmente tiene la atmósfera.",
    
  ),
 CambioClimaticoInfo(
   
    title: 'El Calentamiento de la Atmósfera',
    concept:
        "Entre la atmósfera, la litósfera y la hidrósfera ocurre el movimiento de energía y nutrientes a través de los ciclos biogeoquímicos, entre los que se encuentran el ciclo del carbono, del nitrógeno, del azufre, del fósforo, entre otros. Este movimiento de nutrientes ocurre de forma recíproca desde los elementos bióticos hasta los abióticos de un ecosistema",
    image: "assets/img/cambio_climatico/calentamiento_atmosfera.jpg",
  ),
   CambioClimaticoInfo(
   
    title: 'Los Glaciares',
    concept:
        "Más del 2 % del agua existente en la Tierra se encuentra en forma de hielo. Los glaciares son grandes acumulaciones de hielo que cubren los polos del planeta y las zonas altas de las montañas, y constituyen una gran reserva de agua dulce. Los glaciares se forman sobre las nieves perpetuas. La nieve cae sobre la altitud límite y se dispone en estratos; con el paso de los años la nieve más profunda se hace más compacta.",
    image: "assets/img/cambio_climatico/glaciares.jpg",
  ),
  
];
