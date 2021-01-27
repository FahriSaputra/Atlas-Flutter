import 'package:flutter/material.dart';

import '../global_colors.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: GlobalColors().light,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: GlobalColors().white,
          width: 5,
        ),
      ),
    );
  }
}
