import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'background_image_with_shadow.dart';
import 'comment_button.dart';
import 'favorite_button.dart';
import 'line.dart';

class CardSaved extends StatelessWidget {
  final String image, name, price, favorite, comments;
  final Function onFavoriteTap;
  final bool isFav;

  CardSaved({
    @required this.image,
    this.name,
    this.price,
    this.favorite,
    this.comments,
    this.onFavoriteTap,
    this.isFav,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundImageWithShadow(
      image: NetworkImage(
        image,
      ),
      borderRadius: BorderRadius.circular(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            name,
            style: TextStyle(
              color: GlobalColors().white,
              fontSize: 25,
            ),
            minFontSize: 18,
          ),
          AutoSizeText(
            "\$" "${price.toString()}" + " -  275 Km away",
            style: TextStyle(
              color: GlobalColors().white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: size.width * 1,
            child: Row(
              children: [
                Container(
                  width: size.width * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'icons/sun_icon.png',
                        scale: 2,
                        color: GlobalColors().white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "25°",
                            style: TextStyle(
                              color: GlobalColors().white,
                              fontSize: 25,
                            ),
                          ),
                          AutoSizeText(
                            "Sunny",
                            style: TextStyle(
                              color: GlobalColors().light,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.75 - 100,
                  child: Column(
                    children: [
                      Line(
                        color: GlobalColors().light,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FavoriteButton(
                            isFav: isFav,
                            favorite: favorite,
                            titleColor: GlobalColors().white,
                            iconActiveColor: GlobalColors().pink,
                            iconInactiveColor: GlobalColors().white,
                            onTap: onFavoriteTap,
                          ),
                          CommentButton(
                            comments: comments,
                            iconColor: GlobalColors().white,
                            titleColor: GlobalColors().white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
