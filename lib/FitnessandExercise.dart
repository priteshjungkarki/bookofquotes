import 'package:flutter/material.dart';
import 'FitnessQuotes.dart';
import 'Button.dart';
import 'constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

FitnessQuotes fitnessQuotes = FitnessQuotes();

class Fitness extends StatefulWidget {
  @override
  _FitnessState createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  void isFinish() {
    setState(() {
      if (fitnessQuotes.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        fitnessQuotes.reset();
      }
      fitnessQuotes.nextFitnessQuotesText();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'bookofquotespicture',
                  child: Image.asset('images/bookofquotespicture.png'),
                ),
                Text(
                  fitnessQuotes.getFitnessQuotesText(),
                  style: kQuotesText,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Button(
                  name: 'Next',
                  press: () {
                    setState(() {
                      //fitnessQuotes.nextFitnessQuotesText();
                      isFinish();
                    });
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Button(
                  name: 'Back',
                  press: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
