import 'package:flutter/material.dart';

import 'package:dicoding_submission/screens/explore/child_screen/activities.dart';
import 'package:dicoding_submission/screens/explore/child_screen/discover.dart';

import '../../global_colors.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'DISCOVER'),
    Tab(text: 'ACTIVITIES'),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 1,
      vsync: this,
      length: myTabs.length,
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Color.fromRGBO(170, 170, 170, 1),
          ),
          title: Text(
            'Explore',
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
          bottom: TabBar(
            controller: _tabController,
            tabs: myTabs,
            labelColor: GlobalColors().dark,
            unselectedLabelColor: GlobalColors().light,
            indicatorColor: GlobalColors().pink,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[Discover(), Activities()],
        ),
      ),
    );
  }
}
