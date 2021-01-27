import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({
    Key key,
    this.titleInfo,
    this.numberInfo,
  }) : super(key: key);

  final String titleInfo, numberInfo;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8 / 3 - 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            numberInfo,
            style: TextStyle(
              color: GlobalColors().dark,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          AutoSizeText(
            titleInfo,
            style: TextStyle(
              color: GlobalColors().light,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
