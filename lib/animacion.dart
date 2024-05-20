import 'dart:math' show Random;

import 'package:flutter/material.dart';

class Animacion extends StatefulWidget {
  const Animacion({super.key});

  @override
  State<Animacion> createState() => _AnimacionState();
}

class _AnimacionState extends State<Animacion> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(30);

  void changeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 30;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Animacion'),
        ),
        body: Center(
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 1400),
              curve: Curves.easeOutCubic,
              width: _width,
              height: _height,
              decoration:
                  BoxDecoration(color: _color, borderRadius: _borderRadius)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeShape,
          child: const Icon(
            Icons.play_circle_outline,
            size: 35,
          ),
        ),
      ),
    );
  }
}
