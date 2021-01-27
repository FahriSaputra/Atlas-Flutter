import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/global_colors.dart';
import 'package:dicoding_submission/widgets/comment_button.dart';
import 'package:flutter/material.dart';

import 'favorite_button.dart';

class CardHorizontal extends StatelessWidget {
  const CardHorizontal({
    Key key,
    @required this.onTapFav,
    @required this.isFav,
    @required this.imageAsset,
    @required this.name,
    @required this.price,
    @required this.place,
    this.comments,
    this.favorite,
  }) : super(key: key);

  final Function onTapFav;
  final bool isFav;
  final String imageAsset, name, price, place, comments, favorite;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1,
      constraints: BoxConstraints(maxHeight: 130),
      decoration: BoxDecoration(
        color: GlobalColors().white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          //Image
          Container(
            width: size.width * 0.4 - 10,
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Info
          Container(
            width: size.width * 0.6 - 30,
            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: AutoSizeText(
                              name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: GlobalColors().dark,
                              ),
                              minFontSize: 15,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: AutoSizeText(
                              "\$" + price,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: GlobalColors().light,
                              ),
                              minFontSize: 14,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: [
                                  FittedBox(
                                    child: Icon(
                                      Icons.place_outlined,
                                      size: 20,
                                      color: GlobalColors().medium,
                                    ),
                                  ),
                                  FittedBox(
                                    child: AutoSizeText(
                                      place,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      minFontSize: 15,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            // color: Colors.blue,
                            width: 70,
                            child: FavoriteButton(
                              isFav: isFav,
                              onTap: onTapFav,
                              favorite: favorite,
                            ),
                          ),
                          Container(
                            width: 70,
                            child: CommentButton(
                              comments: comments,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
