import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/widgets/background_image_with_gradient.dart';
import 'package:dicoding_submission/widgets/card_info.dart';
import 'package:flutter/material.dart';

import '../../global_colors.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                BackgroundImageWithGradient(
                  image: AssetImage('assets/img-57.png'),
                  child: Container(
                    height: size.height * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                  color: GlobalColors().white,
                                  border: Border.all(
                                    color: GlobalColors().white,
                                    width: 4,
                                  ),
                                ),
                                child: Icon(
                                  Icons.done,
                                  color: GlobalColors().pink,
                                  size: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        AutoSizeText(
                          "Diana",
                          style: TextStyle(
                            color: GlobalColors().white,
                            fontSize: 20,
                          ),
                          maxFontSize: 20,
                        ),
                        AutoSizeText(
                          "TRAVELER/BLOGGER",
                          style: TextStyle(
                            color: GlobalColors().light,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: size.height * -0.07,
                  left: size.width * 0.1,
                  child: CardInfo(
                    followers: "200K",
                    following: "200",
                    trips: "90",
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            Container(
              width: size.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "ABOUT ME",
                    style: TextStyle(
                      fontSize: 20,
                      color: GlobalColors().dark,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AutoSizeText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor. ",
                    style: TextStyle(
                      fontSize: 14,
                      color: GlobalColors().light,
                      height: 1.5,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // width: size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: GlobalColors().white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset("icons/location.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Switczerland",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "227 KM AWAY",
                              style: TextStyle(color: GlobalColors().light),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: GlobalColors().light,
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1 - 15),
              height: size.height * 0.35,
              color: GlobalColors().white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      "My Photos",
                      style: TextStyle(
                        color: GlobalColors().dark,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.4,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                            color: GlobalColors().light,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: size.width * 0.4,
                        height: size.height * 0.2,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: GlobalColors().light,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Container(
                                    width: size.width * 0.2 - 7,
                                    decoration: BoxDecoration(
                                      color: GlobalColors().light,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: size.width * 0.2 - 8,
                                    decoration: BoxDecoration(
                                      color: GlobalColors().light,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      height: size.height * 0.1 - 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: GlobalColors().medium,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: GlobalColors().white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
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
    );
  }
}
