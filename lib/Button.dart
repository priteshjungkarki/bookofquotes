import 'package:flutter/material.dart';
import 'constants.dart';

class Button extends StatelessWidget {
  const Button({this.name, this.press});
  final String name;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 60.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white70,
            //width: 70.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        onPressed: press,
        child: Text(
          name,
          style: kTextStyle,
        ),
      ),
    );
  }
}
