import 'dart:math';

import 'package:flutter/material.dart';

/// Page for color generation
class ColorGenPage extends StatefulWidget {
  /// Constructor
  const ColorGenPage({super.key});

  @override
  State<ColorGenPage> createState() => _ColorGenPageState();
}

class _ColorGenPageState extends State<ColorGenPage> {
  static const _luminanceBreakPoint = 0.5;
  static const _alpha = 0xFF000000;
  static const _maxRgb = 0x00FFFFFF;
  static const _fontSize = 40.0;

  final _rand = Random(42);
  var _color = Colors.black;

  Color get _textColor => _color.computeLuminance() < _luminanceBreakPoint
      ? Colors.white
      : Colors.black;

  @override
  void initState() {
    super.initState();
    _generateColor();
  }

  void _generateColor() => _color = Color(_alpha | _rand.nextInt(_maxRgb));

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: _color,
        body: InkWell(
          onTap: () => setState(_generateColor),
          child: Center(
            child: Text(
              'Hey there',
              style: TextStyle(color: _textColor, fontSize: _fontSize),
            ),
          ),
        ),
      );
}
