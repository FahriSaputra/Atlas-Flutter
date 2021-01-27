import 'package:dicoding_submission/screens/detail/detail_screen.dart';
import 'package:dicoding_submission/services/list_place.dart';
import 'package:dicoding_submission/widgets/background_image_with_shadow.dart';
import 'package:dicoding_submission/widgets/card_vertikal.dart';
import 'package:dicoding_submission/widgets/line.dart';
import 'package:flutter/material.dart';

import 'package:dicoding_submission/widgets/card_horizontal.dart';
import 'package:dicoding_submission/widgets/custom_flat_button.dart';
import 'package:dicoding_submission/widgets/background_image_with_gradient.dart';
import 'package:dicoding_submission/widgets/title_with_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/global_colors.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  String convertToK(int data) =>
      data >= 1000 ? (data / 1000).floor().toString() + "K" : data.toString();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GlobalColors().veryLight,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackgroundImageWithShadow(
              image: AssetImage("assets/bg_discover.png"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "\$987",
                    style: TextStyle(color: GlobalColors().white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: size.height * 0.07,
                    child: AutoSizeText(
                      "Ac exquisite trip you'll rave about to your friends",
                      style: TextStyle(
                        color: GlobalColors().white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: size.width * 0.35,
                      height: size.height * 0.05,
                      child: CustomFlatButton(
                        title: 'Get access  >',
                        onPressed: () {},
                        textColor: GlobalColors().dark,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: TitleWithButton(
                      title: "Featured",
                      buttonTitle: "See All  >",
                    ),
                  ),
                  Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      CardVertikal(),
                      CardVertikal(),
                      CardVertikal(),
                      CardVertikal(),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Line(
                    color: GlobalColors().light,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 30),
                    child: TitleWithButton(
                      title: "Place to Visit",
                      buttonTitle: "See All  >",
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.35,
                        child: BackgroundImageWithGradient(
                          borderRadius: BorderRadius.circular(20),
                          image: AssetImage("assets/img-53.png"),
                          child: Padding(
                              padding: EdgeInsets.all(35),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  AutoSizeText(
                                    "Mesico City",
                                    style: TextStyle(
                                      color: GlobalColors().white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 30,
                                    ),
                                    minFontSize: 25,
                                  ),
                                  AutoSizeText(
                                    "Morbi urna elit, porta vitae convallis non, bibendum nec diam.",
                                    style: TextStyle(
                                      color: GlobalColors().white,
                                      fontSize: 14,
                                    ),
                                    maxLines: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      width: size.width * 0.4,
                                      child: Line(),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Image.asset(
                                          "icons/sun_icon.png",
                                          scale: 3,
                                          color: GlobalColors().light,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            "22°",
                                            style: TextStyle(
                                              color: GlobalColors().white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          AutoSizeText(
                                            "Sunny",
                                            style: TextStyle(
                                              color: GlobalColors().white,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                      SizedBox(height: 30),
                      Column(
                        children: listPlace.map((data) {
                          return data.totalFavorites > 20000
                              ? InkWell(
                                  // padding: EdgeInsets.all(0),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Detail(place: data);
                                    }));
                                  },
                                  child: CardHorizontal(
                                    name: data.name,
                                    isFav: data.isFav,
                                    imageAsset: data.imageAsset,
                                    place: data.location,
                                    price: data.price.toString(),
                                    comments:
                                        convertToK(data.comments).toString(),
                                    favorite: convertToK(data.totalFavorites)
                                        .toString(),
                                    onTapFav: () {
                                      setState(
                                        () {
                                          data.isFav = !data.isFav;
                                        },
                                      );
                                    },
                                  ),
                                )
                              : Container();
                        }).toList(),
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
