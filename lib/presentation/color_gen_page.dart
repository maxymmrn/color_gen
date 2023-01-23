import 'dart:math';

import 'package:flutter/material.dart';

class ColorGenPage extends StatefulWidget {
  const ColorGenPage({super.key});

  @override
  State<ColorGenPage> createState() => _ColorGenPageState();
}

class _ColorGenPageState extends State<ColorGenPage> {
  final _rand = Random(42);
  late Color _color;

  @override
  void initState() {
    super.initState();
    _generateColor();
  }

  void _generateColor() => _color = Color(0xFF000000 | _rand.nextInt(0xFFFFFF));

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: _color,
        body: Center(
          child: TextButton(
            onPressed: () => setState(_generateColor),
            style: TextButton.styleFrom(
              elevation: 4,
              padding: const EdgeInsets.all(24),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            child: Text(
              'Gen',
              style: TextStyle(color: _textColor, fontSize: 40),
            ),
          ),
        ),
      );

  Color get _textColor =>
      _color.computeLuminance() < 0.5 ? Colors.white : Colors.black;
}
