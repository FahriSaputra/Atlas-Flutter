import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'gradient_button.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key key,
    this.item = "",
    @required this.title,
    @required this.buttonTitle,
  }) : super(key: key);

  final String item;
  final String title;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: GlobalColors().medium),
              ),
              item.isEmpty
                  ? Container()
                  : Text(
                      item,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: GlobalColors().light,
                      ),
                    )
            ],
          ),
        ),
        Container(
          width: 90,
          height: 33,
          child: GradientButton(
            title: buttonTitle,
            onTap: () {},
          ),
        )
      ],
    );
  }
}
