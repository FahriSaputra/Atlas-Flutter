import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'line.dart';

class CardVertikal extends StatelessWidget {
  const CardVertikal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5 - 30,
      height: size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: GlobalColors().white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: size.height * 0.13,
              width: size.width * 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "https://images.unsplash.com/photo-1544477597-7e30412ada8c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: size.width * 0.5,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        // color: Colors.white,
                        child: AutoSizeText(
                          "Mexico City Festival ",
                          maxLines: 2,
                          minFontSize: 18,
                          style: TextStyle(
                            color: GlobalColors().dark,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.amber,
                        child: AutoSizeText(
                          "\$21" + " - Place",
                          style: TextStyle(
                            color: GlobalColors().light,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: size.width * 0.5,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.25 - 5,
                      // color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'icons/sun_icon.png',
                            scale: 4,
                            color: GlobalColors().light,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "25°",
                                style: TextStyle(
                                  color: GlobalColors().dark,
                                  fontSize: 20,
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
                      width: size.width * 0.25 - 41,
                      // color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Line(
                            color: GlobalColors().light,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                size: 25,
                                color: GlobalColors().light,
                              ),
                              AutoSizeText(
                                "100",
                                style: TextStyle(
                                  color: GlobalColors().light,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
