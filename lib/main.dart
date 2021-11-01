import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dicer());
}

// ignore: must_be_immutable
class Dicer extends StatefulWidget {
  const Dicer({Key? key}) : super(key: key);

  @override
  State<Dicer> createState() => _DicerState();
}

class _DicerState extends State<Dicer> {
  var left = 1, right = 1;

  void randomFunc() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice App'),
          backgroundColor: Colors.redAccent,
        ),
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          randomFunc();
                        },
                        child: Image.asset('images/dice$left.png'))),
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          randomFunc();
                        },
                        child: Image.asset('images/dice$right.png')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
