import 'package:flutter/material.dart';

import '../global_colors.dart';

class Aminities extends StatelessWidget {
  final String title;
  final Icon icon;

  Aminities({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * 1 / 3 - 55,
            height: 80,
            decoration: BoxDecoration(
              color: GlobalColors().light,
              borderRadius: BorderRadius.circular(100),
            ),
            child: icon,
          ),
          Container(
            width: 90,
            child: Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
