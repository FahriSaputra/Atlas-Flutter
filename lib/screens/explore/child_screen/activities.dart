import 'package:dicoding_submission/widgets/gradient_container.dart';
import 'package:flutter/material.dart';

import '../../../global_colors.dart';

class Activities extends StatelessWidget {
  List<Color> _colorA = [
    Color.fromRGBO(254, 123, 93, 0.9),
    Color.fromRGBO(235, 57, 155, 0.9),
  ];
  List<Color> _colorB1 = [
    Color.fromRGBO(239, 62, 150, 0.9),
    Color.fromRGBO(190, 60, 218, 0.9),
  ];
  List<Color> _colorB2 = [
    Color.fromRGBO(198, 58, 214, 0.9),
    Color.fromRGBO(64, 106, 231, 0.9),
  ];
  List<Color> _colorC1 = [
    Color.fromRGBO(248, 82, 135, 0.9),
    Color.fromRGBO(184, 61, 220, 0.9),
  ];
  List<Color> _colorC2 = [
    Color.fromRGBO(193, 59, 216, 0.9),
    Color.fromRGBO(78, 96, 235, 0.9),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GlobalColors().veryLight,
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {},
                  child: GradientContainer(
                    title: "Nature's Light",
                    secondTitle: "450 SPOTS",
                    backgroundImage: AssetImage("assets/bg_a.png"),
                    colors: _colorA,
                    iconPath: "icons/tree_icon.png",
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        width: size.width * 0.5 - 28,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {},
                                child: GradientContainer(
                                  title: "Cultural",
                                  secondTitle: "257 SPOTS",
                                  backgroundImage:
                                      AssetImage("assets/bg_b1.png"),
                                  colors: _colorB1,
                                  iconPath: "icons/face_icon.png",
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 6)),
                            Expanded(
                              flex: 3,
                              child: InkWell(
                                onTap: () {},
                                child: GradientContainer(
                                  title: "Polularity",
                                  secondTitle: "357 SPOTS",
                                  backgroundImage:
                                      AssetImage("assets/bg_b2.png"),
                                  colors: _colorB2,
                                  iconPath: "icons/menara_icon.png",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: size.width * 0.5 - 28,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: InkWell(
                                onTap: () {},
                                child: GradientContainer(
                                  title: "Modern Life",
                                  secondTitle: "117 SPOTS",
                                  backgroundImage:
                                      AssetImage("assets/bg_c1.png"),
                                  colors: _colorC1,
                                  iconPath: "icons/home_icon.png",
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 6)),
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {},
                                child: GradientContainer(
                                  title: "Sun & Sand",
                                  secondTitle: " 147 SPOTS",
                                  backgroundImage:
                                      AssetImage("assets/bg_c2.png"),
                                  colors: _colorC2,
                                  iconPath: "icons/sun_icon.png",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
