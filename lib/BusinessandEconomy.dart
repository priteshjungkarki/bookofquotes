import 'package:flutter/material.dart';
import 'constants.dart';
import 'Button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Economy.dart';

Economy economy = Economy();

class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  void isFinish() {
    setState(() {
      if (economy.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        economy.reset();
      }
      economy.nextQuotes();
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
                  economy.getEconomyQuotesText(),
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
