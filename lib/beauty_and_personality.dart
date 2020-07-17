import 'package:flutter/material.dart';
import 'Button.dart';
import 'BeautyQuotes.dart';
import 'constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

BeautyQuotes beautyQuotes = BeautyQuotes();

class Beauty extends StatefulWidget {
  @override
  _BeautyState createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
  void isFinish() {
    setState(() {
      if (beautyQuotes.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        beautyQuotes.reset();
      }
      beautyQuotes.nextQuotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  beautyQuotes.getBeautyQuotesText(),
                  style: kQuotesText,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Button(
                  name: 'Next',
                  press: () {
                    isFinish();
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Button(
                  name: 'Back',
                  press: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
