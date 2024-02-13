// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:feedy_go/widget/appbar_action_icon.dart';
import 'package:feedy_go/widget/bottomsheet_addcard.dart';
import 'package:feedy_go/widget/horizontal_listview.dart';
import 'package:flutter/material.dart';

class MenuDetails extends StatelessWidget {
  MenuDetails({Key? key}) : super(key: key);

  List<bool> isSelected = [true, false, true, false, true, false];
  List<String> title = [
    'Fried Plantain',
    'Coleslaw',
    'Fried Chicken',
    'Chicken Biriyani',
    'Egg Curry',
    'VEG Curry'
  ];
  List<String> title2 = [
    "N300",
    "N800",
    "N900",
    "N500",
    "N100",
    "N200",
  ];
  List<String> image = [
    "assets/food_3.jpg",
    "assets/food_3.png",
    "assets/food_3.jpg",
    "assets/food_4.png",
    "assets/food_5.png",
    "assets/food_2.png",
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    var sizedBox = SizedBox(
      width: 12,
    );
    var textStyle = TextStyle(color: Colors.white, fontSize: 16);
    return Scaffold(
      appBar: AppBar(
        actions: [
          AppBarActionIcon(),
          sizedBox,
        ],
        elevation: .5,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: mediaQuery.size.width * 0.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.grey.shade200],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/food_1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: mediaQuery.size.width * 0.15,
                    height: mediaQuery.size.width * 0.15,
                    margin: EdgeInsets.all(mediaQuery.size.width * 0.05),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(mediaQuery.size.width * 0.1),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: mediaQuery.size.width * 0.1,
                      color: Colors.orange[700],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                sizedBox,
                Text(
                  "Jollof Rice ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "⭐⭐⭐⭐⭐(59 ratings)",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                sizedBox,
                Text(
                  "N1,200",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Container(
                  height: mediaQuery.size.width * 0.1,
                  width: mediaQuery.size.width * 0.23,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(mediaQuery.size.width * 0.05),
                      color: Colors.orange[900]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "-",
                        style: textStyle,
                      ),
                      Text(
                        "1",
                        style: textStyle,
                      ),
                      Text(
                        "+",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
                sizedBox,
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11, bottom: 5),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11, right: 10),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Rich and incredibly tasty dish, made with reduced tomatoes, bell peppers, chili peppers, onions, herbs, and seasoning. ",
                    ),
                    TextSpan(
                      text: "(Each serving contains 248 calories)",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Recommended sides",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.width * 0.4,
              child: ListView.builder(
                itemCount: isSelected.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => HorizontalListView(
                    title2: title2[index],
                    image: image[index],
                    isSelected: isSelected[index],
                    title: title[index]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Ratings & Reviews",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.width * 0.4,
              child: ListView.builder(
                itemCount: isSelected.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => HorizontalListView(
                    title2: title[index],
                    image: image[index],
                    isSelected: isSelected[index],
                    title: title[index]),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.width * 0.5,
            )
          ],
        ),
      ),
      bottomSheet: BottomSheetAddCard(),
    );
  }
}
