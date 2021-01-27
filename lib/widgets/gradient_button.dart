import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final List<Color> _gradientColor = [
    Color.fromRGBO(255, 121, 85, 1),
    Color.fromRGBO(254, 124, 97, 1),
    Color.fromRGBO(210, 48, 120, 1)
  ];
  final String title;
  final Function onTap;

  GradientButton({
    Key key,
    @required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: _gradientColor,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.05, 1],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
