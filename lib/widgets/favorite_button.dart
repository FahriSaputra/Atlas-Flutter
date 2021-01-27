import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFav;
  final Function onTap;
  final String favorite;
  final Color titleColor, iconInactiveColor, iconActiveColor;
  FavoriteButton({
    @required this.isFav = false,
    this.onTap,
    @required this.favorite,
    this.titleColor,
    this.iconInactiveColor,
    this.iconActiveColor = Colors.pink,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 30,
        ),
        child: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(20),
              child: isFav
                  ? Icon(
                      Icons.favorite,
                      size: 20,
                      color: iconActiveColor,
                    )
                  : Icon(
                      Icons.favorite_border_outlined,
                      size: 20,
                      color: iconInactiveColor,
                    ),
              onTap: onTap,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: AutoSizeText(
                favorite,
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: titleColor),
                maxFontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
