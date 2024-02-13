import 'package:feedy_go/views/menu_details.dart';
import 'package:flutter/material.dart';

class MealsScreen extends StatefulWidget {
  MealsScreen({super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  List<bool> isSelected = List.filled(8, false);

  List image = [
    "https://i.pinimg.com/736x/dc/35/f2/dc35f2e03d5fb56bfe13a65f118b3ee8.jpg",
    "https://i.pinimg.com/564x/c0/b5/a5/c0b5a5417f085d65169ade3bc3eb3a79.jpg",
    "https://i.pinimg.com/736x/07/73/e9/0773e979e129549a9ac0a1ee22e6e675.jpg",
    "https://i.pinimg.com/736x/4b/56/07/4b5607cebafa3c546dc3c8bc1e941eb5.jpg",
    "https://i.pinimg.com/736x/37/e8/a9/37e8a9af781d6f95b8fb2578681740e6.jpg",
    "https://i.pinimg.com/736x/78/c4/33/78c433eb22a7fb53e31df6150ca867b2.jpg",
    "https://i.pinimg.com/736x/dc/35/f2/dc35f2e03d5fb56bfe13a65f118b3ee8.jpg",
    "https://i.pinimg.com/564x/c0/b5/a5/c0b5a5417f085d65169ade3bc3eb3a79.jpg",
  ];
  List<String> title = [
    "Cakes",
    "Cholate Cream",
    "Spicy Noodles",
    "Mixed Salad",
    "Beef Salad",
    "VEG Curry",
    "Cakes",
    "Cholate Cream",
  ];
  List<String> title2 = [
    "N1,500",
    "N1,800",
    "N1,600",
    "N1,200",
    "N1,300",
    "N1,100",
    "N1,500",
    "N1,800",
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1 / 1.3),
          itemCount: image.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(9),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuDetails(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[1],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      Stack(
                        children: [
                          Positioned(
                            right: screenSize.width * 0.015,
                            top: screenSize.height * -0.003,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected[index] = !isSelected[index];
                                });
                              },
                              child: isSelected[index]
                                  ? Icon(
                                      Icons.favorite_outlined,
                                      color: Colors.amber[900],
                                      size: screenSize.width * 0.060,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Colors.amber[900],
                                      size: screenSize.width * 0.060,
                                    ),
                            ),
                          ),
                          Container(
                            height: screenSize.height * 0.16,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(190)),
                            child: CircleAvatar(
                              radius: screenSize.width * 0.05,
                              backgroundColor: Colors.transparent,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: Image.network(
                                  image[index],
                                  height: 140,
                                  width: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.01,
                      ),
                      Text(
                        title[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: screenSize.width * 0.04),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.01,
                      ),
                      Text(
                        title2[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenSize.width * 0.04),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
