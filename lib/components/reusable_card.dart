import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour1, @required this.colour2, this.cardChild,this.onPress});

  final Color colour1, colour2;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: new LinearGradient(
              colors: [colour1, colour2],
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.0, 0.5),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
      ),
    );
  }
}

///DecoratedBox(
///   decoration: BoxDecoration(
///     gradient: RadialGradient(
///       center: const Alignment(-0.5, -0.6),
///       radius: 0.15,
///       colors: <Color>[
///         const Color(0xFFEEEEEE),
///         const Color(0xFF111133),
///       ],
///       stops: <double>[0.9, 1.0],
///     ),
///   ),
/// )