import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'beauty_and_personality.dart';
import 'Motivationaland Emotional.dart';
import 'GhostandEvil.dart';
import 'FitnessandExercise.dart';
import 'BusinessandEconomy.dart';

void main() {
  runApp(BookofQuotes());
}

class BookofQuotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'mainpage',
      routes: {
        'mainpage': (context) => MainPage(),
        'beauty': (context) => Beauty(),
        'motivational': (context) => Motivational(),
        'business': (context) => Business(),
        'fitness': (context) => Fitness(),
        'ghost': (context) => Ghost(),
      },
    );
  }
}
