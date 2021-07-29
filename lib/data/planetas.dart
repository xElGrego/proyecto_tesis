class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;
  final String object3d;

  PlanetInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
    this.images,
    this.object3d,
  });
}

List<PlanetInfo> planetsList = [
  PlanetInfo(
    1,
    name: 'Mercurio',
    iconImage: 'assets/img/planets/mercury.png',
    description:
        "Empezamos por este planeta al ser el más cercano al Sol, a parte de ser el más pequeño de sus homólogos. Tiene un parecido a la Tierra, pues su composición es del 70% de elementos metálicos y el 30% restante corresponde a silicatos. Además, al igual que sucede con la Luna, Mercurio presenta un gran número de impactos de meteoritos.",
    images: [
      'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
      'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
      'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
      'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
    ],
    object3d: 'asset/3d/mercurio/',
  ),
  PlanetInfo(
    2,
    name: 'Venus',
    iconImage: 'assets/img/planets/venus.png',
    description:
        "A Venus le corresponde el puesto número dos en cuanto a distancia con respecto al Sol. Dentro de los Planetas del Sistema Solar, suele denominarse a Venus como el planeta “hermano de la Tierra” debido a su parecido, tanto en tamaño como en masa y su composición de tipo terrestre y rocoso.",
    images: [
      'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
      'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg'
    ],
    object3d: 'asset/3d/venus/',
  ),
  PlanetInfo(
    3,
    name: 'Tierra',
    iconImage: 'assets/img/planets/earth.png',
    description:
        "El planeta Tierra, nuestro planeta, es el mayor de los denominados planetas rocosos. Se formó hace unos 4600 millones de años y su nombre proviene del latín “Terra”, deidad griega que corresponde a la feminidad y fecundidad. El 71% de su composición corresponde a la hidrosfera (agua), hecho diferencial que ha permitido la existencia y persistencia de la vida humana. Ningún otro planeta del Sistema Solar contiene tal nivel de líquido.",
    images: [
      'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
      'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
      'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
    ],
    object3d: 'asset/3d/tierra/',
  ),
  PlanetInfo(
    4,
    name: 'Marte',
    iconImage: 'assets/img/planets/mars.png',
    description:
        "Marte es el segundo de los planetas del Sistema solar de menor tamaño, después de Mercurio. Desde hace tiempo es comúnmente conocido como “planeta rojo”, fruto del color rojizo que adquiere por el óxido de hierro en la mayoría de su superficie. Su tamaño es casi la mitad del de la Tierra y su gravedad un 40% menor, lo cual lo hace prácticamente inhabitable según las últimas investigaciones de la NASA.",
    images: [
      'https://img2.rtve.es/i/?w=1600&i=1626983236761.jpg',
      'https://as01.epimg.net/diarioas/imagenes/2021/07/22/actualidad/1626987875_554018_1626987943_noticia_normal_recorte1.jpg',
      'https://services.meteored.com/img/article/marte-en-oposicion-en-el-perihelio-a-disfrutar-284601-1_1024.jpg',
      'https://static3.abc.es/media/ciencia/2021/02/18/marte-serie-U308834iuy-kqvC--620x349@abc.jpg',
    ],
    object3d: 'asset/3d/marte/',
  ),
  PlanetInfo(
    5,
    name: 'Jupiter',
    iconImage: 'assets/img/planets/jupiter.png',
    description:
        "El Planeta del Sistema Solar que recibe su nombre por el Dios Zeus de la mitología griega (Júpiter en mitología romana) es, precedido por el Sol, el planeta con mayor cuerpo celeste. Tiene un tamaño de 1300 veces mayor que la Tierra. Como cuerpo masivo gaseoso, su composición está formada básicamente de hidrógeno y hielo. Como dato curioso, es considerado el planeta más antiguo del Sistema Solar, precediendo al Sol inclusive.",
    images: [
      'https://www.meteorologiaenred.com/wp-content/uploads/2018/07/Planeta-J%C3%BApiter.png',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3bUpfhCOuwejaA_ekzZBXuoEhO2Z5uyipEA&usqp=CAU',
      'https://www.eluniverso.com/resizer/UPPpN20R0PaR_tthfETX8AC1Fdw=/600x503/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/TJBHVVOVTZAXPOHUGIGP7PN264.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk_y6sV8k2J9Rinpdbll1h5wfra0QfgSBlpg&usqp=CAU',
    ],
    object3d: 'asset/3d/jupiter/',
  ),
  PlanetInfo(
    6,
    name: 'Saturno',
    iconImage: 'assets/img/planets/saturn.png',
    description:
        "Es famoso este planeta del Sistema Solar por su imponente brillo procedente de sus anillos que rodean al planeta. Volviendo a Galileo, éste lo avistó por primera vez en el año 1610. Prácticamente todo el planeta (un 96%) está formado por hidrógeno y el 3% restante de hielo.",
    images: [
      'https://juegoderompecabezas.com/wp-content/uploads/2020/12/saturno.jpg',
      'https://i1.wp.com/hipertextual.com/wp-content/uploads/2018/12/saturno.jpg?fit=1200%2C799&ssl=1',
      'https://services.meteored.com/img/article/saturno-se-convierte-en-el-planeta-del-sistema-solar-con-mas-lunas-211761-1.jpg',
      'https://ichef.bbci.co.uk/news/640/cpsprodpb/B4CC/production/_109148264_gettyimages-645502000.jpg',
    ],
    object3d: 'asset/3d/saturno/',
  ),
  PlanetInfo(
    7,
    name: 'Urano',
    iconImage: 'assets/img/planets/uranus.png',
    description:
        "Este planeta está considerado el primero en ser descubierto mediante un telescopio. Su composición es muy parecida a la de sus hermanos Saturno y Júpiter, puesto que está formado por helio e hidrógeno, así como de agua, amoníaco y metano pero en cantidades mayores. Una peculiaridad de este planeta del Sistema Solar es su atmósfera, con las temperaturas más bajas de todo el Sistema, alcanzando la mínima de -224 grados Celsius.",
    images: [
      'https://elcomercio.pe/resizer/oGHFcvi0o3W6PKzoMs4fhvyPm0g=/580x330/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/QA6RIW5S35BADKAIFRRY3CJGVQ.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH6EzBeb0t2NvMBstFBpBE-xE6rpkf3LwNOg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFKpU8XDSDbDfADprnq45DdZ-Xp3YF4lvqdw&usqp=CAU',
      'https://www.muycomputer.com/wp-content/uploads/2016/10/1-1-3.png',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhK-341Wf2HX6iWVItO4xbweLOX_87ccaD8A&usqp=CAU',
    ],
    object3d: 'asset/3d/urano/',
  ),
  PlanetInfo(
    8,
    name: 'Neptuno',
    iconImage: 'assets/img/planets/neptune.png',
    description:
        "Neptuno fue descubierto hace unos dos siglos por Urbain Le Verrier, John Couch y Johann Galle, allá por el año 1847. No obstante, algunos historiadores y astrónomos sostienen que el célebre Galileo Galilei ya observó este planeta por el año 1612, dato todavía sin confirmar. El planeta Neptuno está compuesto de roca fundida, agua, metano, hidrógeno, hielo y amoníaco líquido.",
    images: [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Neptuno-estructura_interna.PNG/400px-Neptuno-estructura_interna.PNG',
      'https://masalladelatierra.com/wp-content/uploads/2020/08/Caracteristicas-de-Neptuno-2.jpg',
      'https://www.caracteristicas.co/wp-content/uploads/2017/05/neptuno-3-e1569257970771.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IdTMrQKis74LsZSsbbMlWX1OUnzfjRxNjA&usqp=CAU',
      'https://sites.google.com/site/elsistemasolarcom/_/rsrc/1472873856081/neptuno/NEPTUNO.jpg',
    ],
    object3d: 'asset/3d/neptuno/',
  ),
];
