import 'package:app_movie/screen/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({Key? key}) : super(key: key);

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  final controller = PageController();
  bool isLast = false;
  List<String> Title = ['Hello World', 'Hello Ashkan', 'Hello Iran'];
  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Container(
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLast = index == 2;
              });
            },
            children: [
              Image.asset('assets/images/joker_splash.png', fit: BoxFit.cover),
              Image.asset('assets/images/batman_splash.png', fit: BoxFit.cover),
              Image.asset('assets/images/spiderman_splash.png',
                  fit: BoxFit.cover),
            ],
          ),
        ),
        bottomSheet: Container(
          decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 40,
                  spreadRadius: 50,
                )
              ],
              gradient: LinearGradient(colors: <Color>[
                Colors.green[300]!.withOpacity(0.5),
                Colors.black.withOpacity(1),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: isLast
              ? Stack(children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: <Color>[
                          Colors.green[400]!.withOpacity(.0),
                          Colors.black.withOpacity(1)
                        ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 190, left: 20, right: 20),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          minimumSize: Size.fromHeight(80)),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setBool('showHome', true);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                    ),
                  ),
                ])
              : Container(
                  height: MediaQuery.of(context).size.height * .4,
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                          child: Text("Lorem Ipsum",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600)),
                          padding: EdgeInsets.only(bottom: 50)),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                          child: Text("Lorem Ipsum duration final film dollor sign Lorem Ipsum dollor ip",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                          padding: EdgeInsets.only(bottom: 50)),
                  
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () => controller.jumpToPage(2),
                                child: Text(
                                  'Skip',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Center(
                                child: SmoothPageIndicator(
                                    count: 3,
                                    controller: controller,
                                    effect: WormEffect(
                                        activeDotColor: Colors.green,
                                        spacing: 20,
                                        dotColor: Colors.grey),
                                    onDotClicked: (index) {
                                      controller.animateToPage(index,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.easeIn);
                                    }),
                              ),
                              TextButton(
                                onPressed: () => controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOut),
                                child: Text(
                                  'Next',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        ));
  }
}
