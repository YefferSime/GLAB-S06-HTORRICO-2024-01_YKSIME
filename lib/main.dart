import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculador de Yeffer Sime'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                color: const Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(text: '7'),
                CalculatorButton(text: '8'),
                CalculatorButton(text: '9'),
                CalculatorButton(text: '/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(text: '4'),
                CalculatorButton(text: '5'),
                CalculatorButton(text: '6'),
                CalculatorButton(text: 'x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(text: '1'),
                CalculatorButton(text: '2'),
                CalculatorButton(text: '3'),
                CalculatorButton(text: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(text: 'C'),
                CalculatorButton(text: '0'),
                CalculatorButton(text: '='),
                CalculatorButton(text: '+'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;

  const CalculatorButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 27),
      ),
    );
  }
}
