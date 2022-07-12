import 'package:app_movie/screen/home_page.dart';
import 'package:app_movie/screen/indroduce.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MainPage(showHome: showHome));
}

class MainPage extends StatelessWidget {
  final bool showHome;
  const MainPage({
    Key? key,
    required this.showHome,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showHome ? HomePage() : IntroducePage(),
    );
  }
}
