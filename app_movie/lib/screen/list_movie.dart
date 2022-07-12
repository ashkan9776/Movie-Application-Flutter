import 'package:app_movie/screen/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ListMovie extends StatefulWidget {
  const ListMovie({Key? key}) : super(key: key);

  @override
  State<ListMovie> createState() => _ListMovieState();
}

class _ListMovieState extends State<ListMovie> {
  int gottenStarts = 5;
  List<String> rate = [
    '(9.2)',
    '(9.0)',
    '(8.9)',
    '(8.8)',
    '(8.5)',
    '(8.2)',
    '(8.1)',
    '(7.9)',
    '(7.5)',
    '(7.2)',
  ];
  List<String> genere = [
    'Superhero',
    'Actions',
    'Battle',
    'Drama',
    'Family',
    'Drama',
    'Crime',
    'Fantastic',
    'Superhero',
    'Researcher'
  ];
  List<String> movieNames = [
    'Spiderman',
    'Godfather',
    'Joker',
    'Deadpool',
    'It',
    'Uncharted',
    'Avengers',
    'The Lost City',
    'Memory',
    'John Wick'
  ];
  List<String> moviePhoto = [
    'assets/images/spiderman_splash.png',
    'assets/images/GodFather_Splash.png',
    'assets/images/jokerNew_Splash.png',
    'assets/images/deadpool_splash.png',
    'assets/images/it_splash.png',
    'assets/images/uncharted_splash.png',
    'assets/images/avengers_splash.png',
    'assets/images/thelostcity_splash.png',
    'assets/images/memory_splash.png',
    'assets/images/johnwick_splash.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Popular Movie",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            elevation: 5,
            backgroundColor: Colors.transparent,
            actions: [
              Container(
                child: Icon(Icons.search),
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .05),
              )
            ]),
        backgroundColor: Colors.blueGrey[900],
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Column(
                  children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .02,
                          left: 20,
                          right: 20,
                          bottom: MediaQuery.of(context).size.height * .02),
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 1,
                          ),
                        ],
                        color: Colors.blueGrey[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: MediaQuery.of(context).size.height / 5,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                height: MediaQuery.of(context).size.height / 6,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: ExactAssetImage(
                                        moviePhoto[index]),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width * .05,
                                    top: MediaQuery.of(context).size.height *
                                        .05),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      movieNames[index],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Genere:",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(genere[index],
                                        style: TextStyle(
                                            letterSpacing: 2,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w200)),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Wrap(
                                          children: List.generate(
                                            5,
                                            (index) {
                                              return Icon(
                                                size: 15,
                                                Icons.star,
                                                color: index <= gottenStarts
                                                    ? Colors.amber
                                                    : Colors.grey,
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(rate[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * .01,
                                right: MediaQuery.of(context).size.width * .05),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Buy",
                                    style:
                                        TextStyle(color: Colors.blueGrey[900])),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amber),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    )))),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ));
  }
}
