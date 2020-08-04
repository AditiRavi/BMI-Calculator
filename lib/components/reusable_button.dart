import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableButton extends StatelessWidget {

  ReusableButton({@required this.onTap,@required this.buttonText});

  final Function onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonText,style: kButtonTextStyle,)),
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [Colors.blueAccent, Colors.greenAccent],
            begin: const FractionalOffset(0.5, 0.0),
            end: const FractionalOffset(0.0, 0.5),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
      ),
    );
  }
}