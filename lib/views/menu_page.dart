// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feedy_go/views/menu_details.dart';
import 'package:feedy_go/widget/appbar_action_icon.dart';
import 'package:feedy_go/widget/meals_screen.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});
  // final TabController _tabController =
  //     TabController(length: 3, vsync: AnimatedListState());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Our Menu',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            AppBarActionIcon(),
            SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(
            unselectedLabelStyle: TextStyle(color: Colors.black),
            labelStyle: TextStyle(
                color: Colors.amber[900],
                fontSize: 15,
                fontWeight: FontWeight.bold),
            labelColor: Colors.amber[900],
            indicatorColor: Colors.orange[900],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.only(left: 10, right: 10),
            dividerHeight: 0,
            // controller: _tabController,
            tabs: [
              Tab(text: 'Meals'),
              Tab(text: 'Sides'),
              Tab(text: 'Snacks'),
            ],
          ),
        ),
        body: TabBarView(
          // controller: _tabController,
          children: [
            // Contents of Tab 1
            MealsScreen(),
            // Contents of Tab 2
            Center(
              child: Text('Tab 2 Content'),
            ),
            // Contents of Tab 3
            Center(
              child: Text('Tab 3 Content'),
            ),
          ],
        ),
      ),
    );
  }
}
