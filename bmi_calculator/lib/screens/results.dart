import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.resulttext, required this.bmiresult, required this.interpretation});

  final String bmiresult;
  final String resulttext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(

            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable_Card(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resulttext.toUpperCase(),
                  style: kResultTextStyle,),
                  Text(bmiresult,
                    style: kBMITextstyle,
                  ),
                  Text(interpretation,
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttomTitle: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
          },),

        ],
      ),
    );
  }
}
