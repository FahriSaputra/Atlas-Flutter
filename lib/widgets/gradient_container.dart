import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'background_image_with_gradient.dart';

/// Class ini digunakan untuk actvities

class GradientContainer extends StatelessWidget {
  final String title, secondTitle;
  final AssetImage backgroundImage;
  List<Color> colors;
  final String iconPath;
  final List<double> stops;

  GradientContainer({
    @required this.title,
    @required this.secondTitle,
    @required this.backgroundImage,
    @required this.colors,
    @required this.iconPath,
    this.stops,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundImageWithGradient(
      image: backgroundImage,
      borderRadius: BorderRadius.circular(20),
      gradientColor: colors,
      stops: stops,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
              child: Image(
                image: AssetImage(iconPath),
                fit: BoxFit.contain,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxHeight: size.height * 0.03,
                    maxWidth: size.width * 0.7,
                  ),
                  child: AutoSizeText(
                    title,
                    style: TextStyle(color: GlobalColors().white, fontSize: 20),
                    maxLines: 1,
                  ),
                ),
                AutoSizeText(
                  secondTitle,
                  style: TextStyle(color: GlobalColors().white, fontSize: 10),
                  maxLines: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
