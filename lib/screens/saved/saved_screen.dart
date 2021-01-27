import 'package:dicoding_submission/screens/detail/detail_screen.dart';
import 'package:dicoding_submission/services/saved_place.dart';
import 'package:dicoding_submission/widgets/card_saved.dart';
import 'package:dicoding_submission/widgets/title_with_button.dart';
import 'package:flutter/material.dart';

import '../../global_colors.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  String convertToK(int data) =>
      data >= 1000 ? (data / 1000).floor().toString() + "K" : data.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Color.fromRGBO(170, 170, 170, 1),
        ),
        title: Text(
          'Saved',
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
      backgroundColor: GlobalColors().veryLight,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TitleWithButton(
                  title: "Bookings",
                  buttonTitle: "+  Filter",
                  item: "${savedPlace.length} Items",
                ),
              ),
              Column(
                children: savedPlace.length > 0
                    ? savedPlace.map((data) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Detail(place: data);
                              }));
                            },
                            child: CardSaved(
                              image: data.imageAsset,
                              name: data.name,
                              favorite:
                                  convertToK(data.totalFavorites).toString(),
                              comments: data.comments.toString(),
                              price: data.price == 0
                                  ? "Free"
                                  : convertToK(data.price).toString(),
                              isFav: data.isFav,
                              onFavoriteTap: () {
                                setState(() {
                                  data.isFav = !data.isFav;
                                });
                              },
                            ),
                          ),
                        );
                      }).toList()
                    : [
                        Container(
                          child: Text(
                            "No Saved Available",
                            style: TextStyle(
                              color: GlobalColors().medium,
                            ),
                          ),
                        ),
                      ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
