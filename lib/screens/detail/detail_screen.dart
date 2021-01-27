import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/services/saved_place.dart';
import 'package:dicoding_submission/services/tourist_place.dart';
import 'package:dicoding_submission/widgets/aminities_icon.dart';
import 'package:dicoding_submission/widgets/circular_image.dart';
import 'package:dicoding_submission/widgets/gradient_button.dart';
import 'package:dicoding_submission/widgets/line.dart';
import 'package:flutter/material.dart';

import '../../global_colors.dart';

class Detail extends StatefulWidget {
  final TourismPlace place;
  Detail({
    Key key,
    @required this.place,
  }) : super(key: key);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var place = widget.place;
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: GlobalColors().veryLight,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.3,
                    decoration: BoxDecoration(
                      color: GlobalColors().white.withOpacity(0.9),
                      image: DecorationImage(
                        image: NetworkImage("${place.imageAsset}"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: SafeArea(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.close,
                              color: GlobalColors().white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: GlobalColors().white,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.share,
                                  color: GlobalColors().white,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: GlobalColors().white,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    bottom: -35,
                    child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onTap: () {
                        setState(() {
                          place.bookmark = !place.bookmark;
                          if (place.bookmark) {
                            savedPlace.add(place);
                          } else {
                            savedPlace.remove(place);
                          }
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: Icon(
                          place.bookmark == true
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                          size: 30,
                          color: GlobalColors().pink,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${place.name}",
                      style: TextStyle(
                        color: GlobalColors().dark,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "\$${place.price}  -  ${place.location}",
                      style: TextStyle(
                        color: GlobalColors().light,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Line(color: GlobalColors().light),
                    ),
                    Text(
                      "ABOUT ${place.name.toUpperCase()}",
                      style: TextStyle(
                        color: GlobalColors().dark,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${place.about}",
                      style: TextStyle(
                        height: 1.5,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'icons/sun_icon.png',
                        scale: 2.5,
                        color: GlobalColors().light,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "25°",
                            style: TextStyle(
                              color: GlobalColors().dark,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("|\n|\n|"),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                place.rating,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("+6k Votes")
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 20,
                                color: GlobalColors().star,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: GlobalColors().star,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: GlobalColors().star,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: GlobalColors().star,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: GlobalColors().star.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            top: 0,
                            right: -60,
                            child: CircularImage(),
                          ),
                          Positioned(
                            top: 0,
                            right: -30,
                            child: CircularImage(),
                          ),
                          CircularImage()
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: GlobalColors().white,
                width: size.width * 1,
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amenities",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: size.width * 0.8,
                      child: Wrap(
                        runSpacing: 20,
                        spacing: size.width * 0.1 - 12,
                        children: [
                          Aminities(
                            icon: Icon(
                              Icons.wifi,
                              size: 30,
                            ),
                            title: "WI-FI",
                          ),
                          Aminities(
                            icon: Icon(
                              Icons.restaurant_menu,
                              size: 30,
                            ),
                            title: "Hotel Restaurant",
                          ),
                          Aminities(
                            icon: Icon(
                              Icons.sanitizer_outlined,
                              size: 30,
                            ),
                            title: "Safe",
                          ),
                          Aminities(
                            icon: Icon(
                              Icons.wine_bar_outlined,
                              size: 30,
                            ),
                            title: "Inn-Bar",
                          ),
                          Aminities(
                            icon: Icon(
                              Icons.local_parking,
                              size: 30,
                            ),
                            title: "Parking Spot",
                          ),
                          Aminities(
                            icon: Icon(
                              Icons.speaker_group_outlined,
                              size: 30,
                            ),
                            title: "Night Club",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: size.width * 1,
                color: GlobalColors().white,
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Before you go",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "--  Payment at checkout",
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors().light,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "--  WI-FI Network is Off by 12:00pm",
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors().light,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "--  No Swimming after 10:00pm",
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors().light,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "--  No more than 2 bags of luggage ",
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors().light,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "--  No singging while showering",
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors().light,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "--  No refund",
                      style: TextStyle(
                        fontSize: 16,
                        color: GlobalColors().light,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 20),
                    GradientButton(
                      title: "Filter",
                      onTap: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
