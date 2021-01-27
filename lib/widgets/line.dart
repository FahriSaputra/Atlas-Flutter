import 'package:flutter/material.dart';

import '../global_colors.dart';

class Line extends StatelessWidget {
  final Color color;

  const Line({
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 2,
      width: size.width * 1,
      color: color == null ? GlobalColors().white.withOpacity(0.25) : color,
      margin: EdgeInsets.only(top: 10, bottom: 10),
    );
  }
}
