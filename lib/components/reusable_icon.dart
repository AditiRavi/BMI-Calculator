import 'package:flutter/material.dart';
import '../constants.dart';
class ReusableIcon extends StatelessWidget {

  ReusableIcon({@required this.iconX,@required this.textX});

  final IconData iconX;
  final String textX;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconX,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textX,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
