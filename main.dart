import 'package:flutter/material.dart';
import 'addnumpage1.dart';
import 'addnumpage2.dart';
import 'addnumpage3.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 65, 225, 73),
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/page1': (context) => AddNumPage1(),
        '/page2': (context) => AddNumPage2(),
        '/page3': (context) => AddNumPage3(),
      },
    );
  }
}
