class NevadosInfo {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  NevadosInfo(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<NevadosInfo> nevadosList = [
  NevadosInfo(
   
    title: 'Efectos del cambio Climático sobre los casquetes Polares, Nevados y capas de Hielo',
    image: "assets/img/nevados/cambio_climatico.jpg",
    concept:
        "Desde años atrás la temperatura global de la tierra ha aumentado paulatinamente, se ha determinado que el año 2014 fue el más caluroso desde que existen estos registros. El aumento de temperatura producto del efecto invernadero trae graves consecuencias para el desarrollo de la vida, el deshielo de los glaciares y casquetes polares es una de ellas.",
  ),
 NevadosInfo(
    title: 'Efecto del aumento de temperatura sobre los glaciares',
    concept:
        "Específicamente desde la revolución industrial, el dióxido de carbono y otras emisiones de gases de efecto invernadero han aumentado las temperaturas, provocando elevaciones de temperatura aún mucho mayores en los polos, y como resultado, los glaciares se han estado derritiendo rápidamente, fraccionándose en el mar.",
    image: "assets/img/nevados/temperatura.jpg",
  ),
];
