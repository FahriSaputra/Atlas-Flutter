import 'package:dicoding_submission/global_colors.dart';
import 'package:flutter/material.dart';

///class ini untuk menampilkan background image dengan gradient
class BackgroundImageWithGradient extends StatelessWidget {
  final AssetImage image;
  final Widget child;
  final List<Color> gradientColor;
  final AlignmentGeometry begin, end;
  final List<double> stops;
  final BorderRadiusGeometry borderRadius;

  BackgroundImageWithGradient({
    @required this.image,
    @required this.child,
    this.gradientColor,
    this.begin = Alignment.topRight,
    this.end = Alignment.bottomLeft,
    this.stops = const [0.0, 0.05, 1.0],
    this.borderRadius,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1,
      decoration: BoxDecoration(
        color: Color.fromRGBO(233, 72, 109, 1),
        borderRadius: borderRadius,
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          colors:
              gradientColor != null ? gradientColor : GlobalColors().gradient,
          begin: begin,
          end: end,
          stops: stops,
        ),
      ),
      child: child,
    );
  }
}
