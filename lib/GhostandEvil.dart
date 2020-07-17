import 'package:flutter/material.dart';
import 'constants.dart';
import 'Button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Evil.dart';

Evil evil = Evil();

class Ghost extends StatefulWidget {
  @override
  _GhostState createState() => _GhostState();
}

class _GhostState extends State<Ghost> {
  void isFinish() {
    setState(() {
      if (evil.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        evil.reset();
      }
      evil.nextQuotes();
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
                  evil.getEviltQuotesText(),
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
