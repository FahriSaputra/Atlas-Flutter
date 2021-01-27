import 'package:flutter/material.dart';

class GlobalColors {
  Color _pink = Color.fromRGBO(244, 50, 127, 1);
  Color _dark = Color.fromRGBO(68, 68, 68, 1);
  Color _medium = Color.fromRGBO(94, 104, 112, 1);
  Color _light = Color.fromRGBO(187, 187, 187, 1);
  Color _veryLight = Color.fromRGBO(242, 242, 242, 1);
  Color _white = Colors.white;
  Color _star = Color.fromRGBO(227, 171, 83, 1);
  List<Color> _gradient = <Color>[
    Color.fromRGBO(255, 121, 85, 1),
    Color.fromRGBO(254, 124, 97, 1),
    Color.fromRGBO(210, 48, 120, 1)
  ];

  Color get pink => _pink;
  Color get dark => _dark;
  Color get medium => _medium;
  Color get light => _light;
  Color get veryLight => _veryLight;
  Color get white => _white;
  Color get star => _star;
  List<Color> get gradient => _gradient;
}
