import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'homepage.dart';

class AddNumPage1 extends StatelessWidget {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('In ry pit Spasiering'),
          backgroundColor: const Color.fromARGB(255, 16, 124, 20),
          leading: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(),
              ),
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _num1,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration:
                    InputDecoration(labelText: 'Stand', hintText: 'Plante/ha'),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _num2,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration:
                    InputDecoration(labelText: 'Rywydte', hintText: 'm'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  double num1 = double.tryParse(_num1.text) ?? 0;
                  double num2 = double.tryParse(_num2.text) ?? 0;

                  if (num1 != 0 && num2 != 0) {
                    double result = (100 * (100 / num2)) / num1 * 100;

                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Result'),
                        content: Text('$result cm'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Error'),
                        content: Text('Enter valid numbers'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
