import 'dart:ui';

import 'package:app_movie/screen/details_movie.dart';
import 'package:app_movie/screen/list_movie.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<String> images1 = [
    'assets/images/GodFather_Splash.png',
    'assets/images/spiderman_splash.png',
    'assets/images/jokerNew_Splash.png',
    'assets/images/memory_splash.png',
  ];
  List<String> starRate = [
    '8.9⭐',
    '7.6⭐',
    '8.5⭐',
    '9.4⭐',
  ];
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    var hi = MediaQuery.of(context).size.height;
    var wi = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .6,
                  child: PageView(
                    controller: controller,
                    children: [
                      Stack(children: [
                        Image.asset('assets/images/joker_splash.png',
                            width: double.infinity, fit: BoxFit.cover),
                        Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .5),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                stops: <double>[
                                  0,
                                  .5
                                ],
                                colors: <Color>[
                                  Colors.blueGrey[900]!.withOpacity(1),
                                  Colors.transparent.withOpacity(0),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .070,
                            top: MediaQuery.of(context).size.height * .5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Avaliable Now",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Joker",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: FloatingActionButton(
                                  tooltip: "Play",
                                  onPressed: () {},
                                  child: Image.asset(
                                      'assets/images/icon_play.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                      Stack(children: [
                        Image.asset('assets/images/spiderman_splash.png',
                            width: double.infinity, fit: BoxFit.cover),
                        Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .5),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                stops: <double>[
                                  0,
                                  .5
                                ],
                                colors: <Color>[
                                  Colors.blueGrey[900]!.withOpacity(1),
                                  Colors.transparent.withOpacity(0),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .070,
                              top: MediaQuery.of(context).size.height * .5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Avaliable Now",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Spiderman",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                      'assets/images/icon_play.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                      Stack(children: [
                        Image.asset('assets/images/batman_splash.png',
                            width: double.infinity, fit: BoxFit.cover),
                        Container(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .5),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                stops: <double>[
                                  0,
                                  .5
                                ],
                                colors: <Color>[
                                  Colors.blueGrey[900]!.withOpacity(1),
                                  Colors.transparent.withOpacity(0),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .070,
                              top: MediaQuery.of(context).size.height * .5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Avaliable Now",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "Batman",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                      'assets/images/icon_play.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.55,
                      left: MediaQuery.of(context).size.width * .41),
                  child: SmoothPageIndicator(
                      count: 3,
                      controller: controller,
                      effect: WormEffect(
                          spacing: 20,
                          dotColor: Colors.white,
                          dotWidth: 10,
                          dotHeight: 10),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn)),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .34,
                        top: MediaQuery.of(context).size.height * .03),
                    child: Text(
                      "Popular Movie 🔥",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          children: List.generate(
                            4,
                            (index) {
                              return Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        .05),
                                height: MediaQuery.of(context).size.height / 5,
                                child: ClipRRect(
                                  child: Stack(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailsMovie(id: index,)));
                                          },
                                          child: Image.asset(images1[index])),
                                      Container(
                                        alignment: Alignment.topRight,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                25,
                                        margin: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6.5),
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  40,
                                              top: 5),
                                          child: Text(
                                            starRate[index],
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(blurRadius: 5)
                                          ],
                                          color: Colors.grey[500],
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(50)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        IconButton(
                          icon: Image.asset('assets/images/arrow_right.png'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListMovie()));
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blueGrey[500]!.withOpacity(.5),
        height: 60,
        buttonBackgroundColor: Colors.green,
        backgroundColor: Colors.blueGrey[900]!,
        items: <Widget>[
          Icon(Icons.home_outlined, size: 20, color: Colors.white),
          Icon(Icons.live_tv, size: 20, color: Colors.white),
          Icon(Icons.favorite_border_rounded, size: 20, color: Colors.white),
          Icon(Icons.person_outline, size: 20, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            if (index == 2) {}
          });
        },
      ),
    );
  }
}
