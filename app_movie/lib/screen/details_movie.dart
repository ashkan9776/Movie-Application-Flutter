import 'package:app_movie/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsMovie extends StatelessWidget {
  const DetailsMovie({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    List<String> moviePhoto = [
      'assets/images/godfather_poster.png',
      'assets/images/spiderman_poster.png',
      'assets/images/joker_detail.jpg',
      'assets/images/memory_poster.png',
    ];
    List<String> movieName = [
      'God Father',
      'SpiderMan',
      'Joker',
      'Memory',
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(moviePhoto[id], fit: BoxFit.cover),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
            decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                boxShadow: <BoxShadow>[
                  BoxShadow(blurRadius: 50, spreadRadius: 10)
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20,
                      right: MediaQuery.of(context).size.width / 10,
                      left: MediaQuery.of(context).size.width / 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        movieName[id],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "9.4",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .16,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Text(
                        "Drama, 3h 57m",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      Text(
                        "Review",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Text(
                        "Lorem Ipsum and others are true and the only thing that matters is the name of the author of the document. The author of the document is the author of the document.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            height: 2,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_rounded,
                              color: Colors.white, size: 40),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Add To List",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.downloading,
                              color: Colors.white, size: 40),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Download",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.share, color: Colors.white, size: 40),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Share", style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.star, shadows: <Shadow>[
                  Shadow(
                      blurRadius: 10,
                      color: Colors.green[700]!,
                      offset: Offset(0, 4))
                ]),
                Column(
                  children: [
                    Text(
                      "Reviews",
                      style:
                          TextStyle(color: Colors.blueGrey[900], fontSize: 13),
                    ),
                    Text(
                      "(1,594)",
                      style:
                          TextStyle(color: Colors.blueGrey[900], fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 86, 226, 91),
                borderRadius: BorderRadius.circular(50)),
            height: 100,
            width: 60,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height / 2.9,
                top: MediaQuery.of(context).size.height / 2.9),
          ),
        ]),
      ),
    );
  }
}
