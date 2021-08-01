import 'package:az_bmi/utils/constants.dart';
import 'package:az_bmi/widgets/bottom_button.dart';
import 'package:az_bmi/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.bmiResult, this.resultText, this.interpretation);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kLargeTextStyle,
              ),
            ),
            ReusableCard(
              onPress: () {},
              bgColor: kBottomContainerNgColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      resultText.toUpperCase(),
                      style: kLargeTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32,bottom: 32),
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Text(
                        bmiResult,
                        style: kLargeTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kLargeTextStyle,
                    ),
                  )
                ],
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            )
          ],
        ),
      ),
    );
  }
}
