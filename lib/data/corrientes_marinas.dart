class CorrientesMarinasInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  CorrientesMarinasInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<CorrientesMarinasInfo> corrientesMarinasList = [
  CorrientesMarinasInfo(
    title: 'Dinámica hídrica oceánica',
    image: "assets/img/corrientes_marinas/dinamica.jpg",
    concept:
        "El agua de los océanos está en continuo movimiento. Los movimientos del agua del mar se producen por la acción de diversos factores; el principal es el viento, aunque también intervienen la diferencia de densidad entre las masas de agua, la rotación terrestre y la atracción gravitatoria de la Luna y el Sol.",
    
  ),
 CorrientesMarinasInfo(
    title: 'Corrientes de los grandes océanos',
    concept:
        "En las grandes masas de agua se producen movimientos, tanto de las aguas profundas como de las superficiales. Éstos suceden a causa de las diferencias de densidad del agua, el efecto Coriolis y la fuerza del viento.",
    image: "assets/img/corrientes_marinas/corriente_grande.jpg",
  ),

   CorrientesMarinasInfo(
    title: 'Las mareas',
    concept:
        "Son movimientos regulares y periódicos que consisten en ascensos y descensos del nivel del agua. Las mareas son provocadas por la fuerza de atracción que ejercen la Luna y el Sol sobre la Tierra, aunque este último en menor medida.",
    image: "assets/img/corrientes_marinas/mareas.jpg",
  ),
 

  CorrientesMarinasInfo(
    title: 'Las olas',
    concept:
        " Las olas son movimientos ondulatorios del agua, inducidos por el viento, que se inician en la superficie de los mares y océanos, y se propagan hasta llegar a la costa. En el esquema siguiente se observa cómo se forman las olas.",
    image: "assets/img/corrientes_marinas/olas.jpg",
  ),

   CorrientesMarinasInfo(
    title: 'Los tsunamis',
    concept:
        "Son olas gigantes que se producen a causa de erupciones volcánicas o terremotos submarinos. La fuerza expansiva que generan estos fenómenos se transmite al agua y provoca un movimiento oscilatorio de las partículas que se desplaza a gran velocidad, a unos 800 km/h. En mar abierto, la distancia entre las olas es de unos 100 km y su amplitud no supera el metro de altura, por lo que son casi imperceptibles.",
    image: "assets/img/corrientes_marinas/tsunami.jpg",
  ),
  
];
