class ContaminacionAgua {
  final String title;
  final String image;
  final String concept;
  final String object3d;

  ContaminacionAgua(
 {
    this.title,
    this.image,
    this.concept,
    this.object3d,
  });
}

List<ContaminacionAgua> contaminacionAguaList = [
  ContaminacionAgua(

    title: 'El ciclo de autodepuración del agua',
    image: "assets/img/contaminacion/agua.jpg",
    concept:
        "El agua dispone de sistemas de limpieza, que se llevan a cabo mediante el ciclo de autodepuración. Algunos de los mecanismos que intervienen son:  Los restos de los seres vivos sirven de alimento a algunos animales o se descomponen por la acción de bacterias y hongos. Este proceso se denomina biodegradación. Los productos que resultan de la acción de los descomponedores son utilizados por las plantas como nutrientes.",
    
  ),
 ContaminacionAgua(
   
    title: 'Poblaciones',
    concept:
        " Las aguas residuales, en ocasiones, son vertidas directamente a los ríos o al mar sin pasar por un proceso de limpieza. Estas aguas contienen sólidos en suspensión, detergentes y elevadas cantidades de materia orgánica, que favorece la proliferación de patógenos, como bacterias y virus.",
    image: "assets/img/contaminacion/poblaciones.jpg",
  ),

   ContaminacionAgua(
   
    title: 'Agricultura',
    concept:
        "Los pesticidas y los abonos son, a menudo, utilizados en exceso para obtener un alto rendimiento en las explotaciones agrícolas. El lavado del suelo por el agua de riego o de la lluvia traslada estas sustancias a los acuíferos o ríos, donde se acumulan.",
    image: "assets/img/contaminacion/agricultura.jpg",
  ),
  ContaminacionAgua(
   
    title: 'Ganadería',
    concept:
        "Los purines son los excrementos del ganado. Habitualmente, se acumulan en las explotaciones ganaderas. Muchas veces, son vertidos directamente al agua o se utilizan para abonar los campos de cultivo, aunque no sea necesario, con lo que las sustancias nutritivas no son absorbidas en su totalidad por las plantas y son lavadas por el agua de las precipitaciones y del riego.",
    image: "assets/img/contaminacion/ganaderia.jpg",
  ),
  ContaminacionAgua(
   
    title: 'Industria y minería',
    concept:
        "Las aguas residuales procedentes de las industrias y las minas contienen sustancias tóxicas y materiales sólidos de difícil descomposición. La composición de estas aguas residuales es muy diversa, depende de la industria que las genera. Así, pueden encontrarse cantidades variables de materia orgánica, metales pesados, ácidos, etc.",
    image: "assets/img/contaminacion/mineria.jpg",
  ),
];
