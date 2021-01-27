import "package:flutter/material.dart";

import '../global_colors.dart';

class BackgroundImageWithShadow extends StatelessWidget {
  const BackgroundImageWithShadow({
    Key key,
    this.child,
    @required this.image,
    this.borderRadius,
  }) : super(key: key);
  final Widget child;
  final ImageProvider image;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: GlobalColors().white.withOpacity(0.9),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
        borderRadius: borderRadius,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Colors.black.withOpacity(0.3),
        ),
        padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
        child: child,
      ),
    );
  }
}
