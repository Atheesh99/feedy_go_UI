// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feedy_go/widget/sigin_screen.dart';
import 'package:feedy_go/widget/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // List<String> image = [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmB0ucn4yXXdi-zIBF5qyJIRBQ0KnNHLTlU3Zu45Dr-f7rlE3FQiTzQON57bS68-V6qsU&usqp=CAU",
  //   "https://img.freepik.com/free-psd/3d-circle-with-facebook-logo-isolated-transparent-background_125540-3726.jpg?w=900&t=st=1707825794~exp=1707826394~hmac=7078bca4ac2fa1d865cd9f95a013756b713f1145e05aea382b4bb020dce4b7f2",
  //   "https://img.freepik.com/free-psd/3d-circle-with-twitter-logo-isolated-transparent-background_125540-3733.jpg?w=900&t=st=1707825826~exp=1707826426~hmac=bcacbb6cbb2b74262c33c905ab97d27e3b2dd62457a0d2b8e15facb987847891"
  // ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size screeSize = MediaQuery.of(context).size;
    double width = screeSize.width;
    double height = screeSize.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: height * 0.25,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Stack(
                  children: [
                    Positioned(
                      left: -50,
                      top: -50,
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black54,
                            width: 2,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 130,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/food_5.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11, right: 11),
                child: SizedBox(
                  height: height * 0.45,
                  // color: Colors.yellow,
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          dividerHeight: 0,
                          labelStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                          unselectedLabelColor: Colors.orange.withOpacity(0.4),
                          indicatorColor: Colors.orange[900],
                          labelColor: Colors.orange[800],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(text: 'Sign In'),
                            Tab(text: 'Sign Up'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              // Contents of Sign In tab
                              SignInScreen(),

                              // Contents of Sign Up tab
                              SignUpScreen(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    Text(
                      '  OR  ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Sign in using :'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                // color: Colors.amber,
                width: width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _siginupImage('assets/google.png'),
                    _siginupImage('assets/fb.png'),
                    _siginupImage('assets/twitter.png'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _siginupImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[4],
          borderRadius: BorderRadius.circular(49)),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
