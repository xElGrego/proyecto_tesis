import 'package:flutter/material.dart';

import 'app/pages/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'El Mundo de la Ciencia',
      home: HomePage(),
    );
  }
}
