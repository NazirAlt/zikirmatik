import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Zikirmatik extends StatefulWidget {
  Zikirmatik({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _ZikirmatikState createState() => _ZikirmatikState();
}

class _ZikirmatikState extends State<Zikirmatik> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/mech.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 30, top: 150),
              child: Text(
                'Аллахумма салли ‘аля Мухаммадин ва ‘аля али Мухаммад',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 150),
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.moon,
                  size: 50,
                  color: Colors.blue,
                ),
                Text(
                  '$_counter',
                  style: const TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30, top: 400, bottom: 100),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(
              Icons.add,
              size: 50,
            ),
          ),
        ]),
      ),
    );
  }
}
