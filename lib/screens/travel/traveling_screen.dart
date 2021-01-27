import 'package:dicoding_submission/screens/detail/detail_screen.dart';
import 'package:dicoding_submission/services/list_place.dart';
import 'package:dicoding_submission/widgets/card_horizontal.dart';
import 'package:flutter/material.dart';

import 'package:dicoding_submission/global_colors.dart';
import 'package:dicoding_submission/widgets/title_with_button.dart';

class Traveling extends StatefulWidget {
  @override
  _TravelingState createState() => _TravelingState();
}

class _TravelingState extends State<Traveling> {
  String convertToK(int data) =>
      data >= 1000 ? (data / 1000).floor().toString() + "K" : data.toString();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: GlobalColors().veryLight,
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: GlobalColors().light,
          ),
          title: Text(
            'Traveling',
            style: TextStyle(
              color: GlobalColors().dark,
              fontWeight: FontWeight.w300,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: GlobalColors().light,
            )
          ],
          centerTitle: true,
          backgroundColor: GlobalColors().white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 8,
                  ),
                  child: TitleWithButton(
                    item: "${listPlace.length} SPOTS",
                    title: "Featured",
                    buttonTitle: "+  Filter",
                  ),
                ),
                Column(
                    children: listPlace.map(
                  (data) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail(place: data);
                          }));
                        },
                        child: CardHorizontal(
                          name: data.name,
                          isFav: data.isFav,
                          imageAsset: data.imageAsset,
                          place: data.location,
                          price:
                              data.price == 0 ? "Free" : data.price.toString(),
                          comments: convertToK(data.comments),
                          favorite: convertToK(data.totalFavorites),
                          onTapFav: () {
                            setState(() {
                              data.isFav = !data.isFav;
                              data.isFav == true
                                  ? data.totalFavorites += 1
                                  : data.totalFavorites -= 1;
                            });
                          },
                        ),
                      ),
                    );
                  },
                ).toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
