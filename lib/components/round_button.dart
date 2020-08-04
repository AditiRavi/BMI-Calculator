import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 3.0,
      child: Icon(icon),
      shape: CircleBorder(),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      fillColor: Colors.lightBlueAccent,
    );
  }
}