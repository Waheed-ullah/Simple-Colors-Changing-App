import 'dart:math';
import 'package:flutter/material.dart';

class RandomColorScreen extends StatefulWidget {
  const RandomColorScreen({super.key});

  @override
  _RandomColorScreenState createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {
  Color _backgroundColor = Colors.white;

  void _changeColor() {
    setState(() {
      _backgroundColor = Color(Random().nextInt(0xFFFFFFFF));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: _changeColor,
          child: const Text('Change Color'),
        ),
      ),
    );
  }
}
