import 'package:flutter/material.dart';
import 'addnumpage1.dart';
import 'addnumpage2.dart';
import 'addnumpage3.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plante Stand',
            style: TextStyle(
                fontFamily: 'Arial', fontSize: 28.0, color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 16, 121, 19),
      ),
      body: Center(
        child: Image.network(
            'https://th.bing.com/th/id/OIP.g6OhUGmn6c6RmAen0GsHDAHaE8'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff4169e1),
        selectedItemColor: Colors.yellow[200],
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture_rounded),
            label: 'In ry pit Spasiering',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture_rounded),
            label: 'Pitte per 10m',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture_rounded),
            label: 'Stand Berekening',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/page1');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/page2');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/page3');
          }
        },
      ),
    );
  }
}
