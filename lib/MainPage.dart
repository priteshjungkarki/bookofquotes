import 'package:flutter/material.dart';
import 'Button.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Image.asset(
                'images/bookofquotes.png',
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'bookofquotespicture',
                child: Image.asset('images/bookofquotespicture.png'),
              ),
              Button(
                name: 'Beauty & Personality',
                press: () {
                  Navigator.pushNamed(context, 'beauty');
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Button(
                name: 'Motivational & Emotional',
                press: () {
                  Navigator.pushNamed(context, 'motivational');
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Button(
                name: 'Business & Economy',
                press: () {
                  Navigator.pushNamed(context, 'business');
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Button(
                name: 'Fitness & Exercise',
                press: () {
                  Navigator.pushNamed(context, 'fitness');
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Button(
                name: 'Ghost & Evil',
                press: () {
                  Navigator.pushNamed(context, 'ghost');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
