import 'package:flutter/material.dart';


import 'app/pages/home/home_page.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tesis',
      home: HomePage(),
    );
  }
} 
