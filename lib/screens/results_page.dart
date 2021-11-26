import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text('Your Results', style: titleTextStyle),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: cardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(), style: resultTextStyle),
                      Text(bmiResult, style: bmiTextStyle),
                      Column(
                        children: [
                          Text(
                            'Normal BMI range:',
                            style: labelTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '18 - 25',
                            style: labelTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  )),
            ),
            BottomButton(
              buttonTitle: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
