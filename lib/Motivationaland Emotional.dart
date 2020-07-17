import 'package:flutter/material.dart';
import 'Emotional.dart';
import 'constants.dart';
import 'Button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Emotional emotional = Emotional();

class Motivational extends StatefulWidget {
  @override
  _MotivationalState createState() => _MotivationalState();
}

class _MotivationalState extends State<Motivational> {
  void isFinish() {
    setState(() {
      if (emotional.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        emotional.reset();
      }
      emotional.nextText();
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
                  emotional.getMotivationalQuotesText(),
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
