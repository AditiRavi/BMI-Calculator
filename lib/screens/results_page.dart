import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmi,@required this.result,@required this.interpretation});

  final String bmi,result,interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour1: Color(0xFF1C1C2D),
                colour2: Color(0xFF1C1C2D),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMIStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ReusableButton(
              buttonText: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
