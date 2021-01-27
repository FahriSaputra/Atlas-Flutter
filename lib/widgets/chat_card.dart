import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'line.dart';

class ChatCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: size.width * 0.15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/img-10.png"),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: size.width * 0.05,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(110),
                    color: GlobalColors().pink,
                    border: Border.all(
                      color: GlobalColors().white,
                      width: 4,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: size.width * 0.85 - 60,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Diana Palmer",
                            style: TextStyle(
                              color: GlobalColors().dark,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          AutoSizeText(
                            "Thanks",
                            style: TextStyle(
                              color: GlobalColors().light,
                            ),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    AutoSizeText(
                      "1 HOURS AGO",
                      style: TextStyle(
                        color: GlobalColors().light,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                Line(
                  color: GlobalColors().light,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
