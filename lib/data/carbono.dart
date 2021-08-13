class Carbono {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  Carbono(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<Carbono> carbonoList = [
  Carbono(

    title: 'El Carbono en los Combustibles ',
    image: "assets/img/carbono/carbono_combustibles.jpg",
    concept:
        "El carbono es el elemento fundamental presente en los combustibles fósiles como carbón de piedra, petróleo y gas natural. El carbón de piedra o hulla es un combustible sólido de origen vegetal, es una roca sedimentaria de color negro que generalmente contiene otros minerales como impurezas. La presencia de azufre es el principal problema, pues al combustionarse contamina el aire por la formación de óxido de azufre.",
    
  ),
 Carbono(
   
    title: 'El Petróleo',
    concept:
        "El petróleo es una mezcla de compuestos de origen natural, formados por carbono e hidrógeno llamados hidrocarburos, con diferentes masas moleculares y unos pocos compuestos con azufre y oxígeno. También se le denomina crudo. Es un recurso no renovable.",
    image: "assets/img/carbono/carbono_petroleo.jpg",
  ),

   Carbono(
   
    title: 'El Gas Natural',
    concept:
        "El gas natural está formado principalmente por gas metano y en menores proporciones por otros gases como etano, propano, butano y dióxido de carbono CO2. Es una fuente de energía fósil importante. Se lo obtiene de yacimientos independientes y otros asociados a los pozos de petróleo o yacimientos de carbón. Tiene una estructura similar al biogás obtenido por la descomposición anaerobia de desechos orgánicos.",
    image:"assets/img/carbono/gasnatural.jpg",
  ),
  Carbono(
   
    title: 'El Carbono en el Aire, el Agua y el Suelo',
    concept:
        "El carbono se encuentra en el dióxido de carbono, CO2 , que está en el aire y disuelto en el agua. Los suelos tienen en su composición sales minerales y sedimentos que contienen carbonatos.El carbono ingresa al suelo debido a los procesos de combustión de los combustibles fósiles, y la utilización en las actividades agrícolas y ganaderas de compuestos como fertilizantes, insecticidas y productos para la salud. ",
    image: "assets/img/carbono/carbono_aire.jpg",
  ),
];
