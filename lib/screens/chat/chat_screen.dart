import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/widgets/chat_card.dart';
import 'package:flutter/material.dart';

import '../../global_colors.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Color.fromRGBO(170, 170, 170, 1),
          ),
          title: Text(
            'Chat',
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
          child: Column(
            children: [
              Container(
                color: GlobalColors().white,
                margin: EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: AutoSizeText(
                          "Active Now",
                          style: TextStyle(
                            color: GlobalColors().dark,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Wrap(
                        runSpacing: 20,
                        children: [
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: GlobalColors().white,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: AutoSizeText(
                          "Archives",
                          style: TextStyle(
                            color: GlobalColors().dark,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Wrap(
                        runSpacing: 20,
                        children: [
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                          ChatCard(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: GlobalColors().pink,
        ),
      ),
    );
  }
}
