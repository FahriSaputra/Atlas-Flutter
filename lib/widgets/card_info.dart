import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'info_bar.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key key,
    @required this.followers,
    @required this.trips,
    @required this.following,
  }) : super(key: key);

  final String followers, trips, following;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: size.width * 0.8,
      height: size.height * 0.11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: GlobalColors().white,
        boxShadow: [
          BoxShadow(
            color: GlobalColors().medium.withOpacity(0.2),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InfoBar(
            numberInfo: followers,
            titleInfo: "FOLLOWERS",
          ),
          InfoBar(
            numberInfo: following,
            titleInfo: "FOLLOWING",
          ),
          InfoBar(
            numberInfo: trips,
            titleInfo: "TRIPS",
          ),
        ],
      ),
    );
  }
}
