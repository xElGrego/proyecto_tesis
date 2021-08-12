class AreasProtegidas {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  AreasProtegidas(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<AreasProtegidas> areasprotegidasList = [
  AreasProtegidas(

    title: 'Parque Nacional El Cajas',
    image: "assets/img/areas_protegidas/elcajas.jpg",
    concept:
        "Ubicado en el nudo de El Cajas, provincia del Azuay, al oeste de la ciudad de Cuenca, se llega por la vía Cuenca-Sayausí, Quinoa, Miguir-Molleturo. Tiene una extensión de 28.000 hectáreas, es un altiplano de páramo con efectos periglaciares, en donde se hallan lagunas y lagunillas. Esta plataforma andina cubierta de lagos y restos de glaciaciones tiene una singular belleza.  Su clima inestable por las nubes y vientos permite ver el cielo y la montaña en un juego de la naturaleza que la vuelve misteriosa. ",
    
  ),
  AreasProtegidas(

    title: 'El Cotopaxi',
    image: "assets/img/areas_protegidas/cotopaxi.jpg",
    concept:
        "El Cotopaxi es un estratovolcán activo que se encuentra en la ciudad de Latacunga, Provincia de Cotopaxi, República del Ecuador.Es el segundo volcán más alto del país. Se encuentra ubicado a 60 kilómetros al sur de Quito, en un área de 33.393 hectáreas, aproximadamente. Existen zonas de vida faunísticas en medio de bosques de pino.",
    
  ),
  AreasProtegidas(
   
    title: 'Parque Nacional Sangay',
    concept:
        "El Parque Nacional 'Sangay' es una extensa zona que abarca 271.000 hectáreas, ubicado en territorio de las provincias de Chimborazo, Morona Santiago y Tungurahua. Fue creado mediante acuerdo ministerial el 26 de julio de 1976. En consideración a sus maravillosas características extraordinarias de relieve, hidrografía, fauna y flora, fue declarado en 1983, como: 'Patrimonio de la Humanidad'.",
    image: "assets/img/areas_protegidas/sangay.jpg",
  ),
 AreasProtegidas(
   
    title: 'Parque Nacional Sumaco-Napo-Galeras',
    concept:
        "Se encuentra en las provincias del Napo y Orellana sobre el macizo de Sumaco. Tiene 100.045 hectáreas",
    image: "assets/img/areas_protegidas/sumaco.jpg",
  ),

   
  AreasProtegidas(
   
    title: 'Parque Nacional Colambo-Yacuri',
    concept:
        "Este importante territorio protegido forma parte del proyecto ubicado en el Parque Nacional de la provincia de Loja, entre los cantones: Loja y Espíndola y corresponde a la parroquia rural Santa Teresita (creada el 16 de mayo de 1967). ",
    image: "assets/img/areas_protegidas/yacuri.jpg",
  ),
  AreasProtegidas(
   
    title: 'Parque Nacional Yasuní',
    concept:
        "Es una zona intangible de la Amazonia ecuatoriana; su principal característica es la de ser un bosque tropical húmedo, con una extensión aproximada de 679.000 hectáreas ubicadas en la llanura oriental de la Amazonia ecuatoriana. El clima es extraordinariamente húmedo y los suelos irregulares.  El Parque Nacional Yasuní, fue declarado, como tal, el 26 de julio de 1979.",
    image: "assets/img/areas_protegidas/yasuni.jpg",
  ),
];
