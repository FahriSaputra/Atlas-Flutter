import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String title;
  final double width, height;
  final Function onPressed;
  final Color textColor, color;
  final Decoration decoration;

  const CustomFlatButton({
    Key key,
    @required this.title,
    this.width = 0,
    this.height = 50,
    @required this.onPressed,
    this.textColor = const Color.fromRGBO(244, 50, 127, 1),
    this.color = Colors.white,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: width == 0 ? size.width * 1 : width,
      height: height,
      decoration: decoration,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: color,
        textColor: textColor,
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
