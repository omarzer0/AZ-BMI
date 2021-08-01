import 'package:az_bmi/screens/result_page.dart';
import 'package:az_bmi/utils/calculator_brain.dart';
import 'package:az_bmi/utils/constants.dart';
import 'package:az_bmi/widgets/bottom_button.dart';
import 'package:az_bmi/widgets/card_with_text_and_two_round_buttons.dart';
import 'package:az_bmi/widgets/image_with_checkbox.dart';
import 'package:az_bmi/widgets/my_card.dart';
import 'package:az_bmi/widgets/reusable_card.dart';
import 'package:az_bmi/widgets/text_align_to_right.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum SelectedGender { male, female }
enum Operation { add, remove }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SelectedGender selectedGender = SelectedGender.male;
  int weight = 60;
  int height = 180;
  int age = 18;

  int addOrRemove(Operation operation, int number) {
    if (operation == Operation.add)
      return number++;
    else
      return number--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AZ BMI'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text('Gender', style: kAppTextStyle),

            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = SelectedGender.male;
                      });
                    },
                    bgColor: kDeepGrayCardBgColor,
                    cardChild: ImageWithCheckbox(
                      title: 'Male',
                      icon: FontAwesomeIcons.male,
                      isSelected: selectedGender == SelectedGender.male,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = SelectedGender.female;
                      });
                    },
                    bgColor: kDeepGrayCardBgColor,
                    cardChild: ImageWithCheckbox(
                      title: 'Female',
                      icon: FontAwesomeIcons.venus,
                      isSelected: selectedGender == SelectedGender.female,
                    ),
                  ),
                ),
              ],
            ),

            TextAlignedToRight(text: 'Weight'),
            // Escaping map error on null (idk)
            MyCard(
              dropDownListNumber: 1,
              shownNumber: weight,
              onStartIconPress: () {
                setState(() {
                  weight--;
                });
              },
              onEndIconPress: () {
                setState(() {
                  weight++;
                });
              },
            ),
            TextAlignedToRight(text: 'Height'),
            MyCard(
              dropDownListNumber: 2,
              shownNumber: height,
              onStartIconPress: () {
                setState(() {
                  height--;
                });
              },
              onEndIconPress: () {
                setState(() {
                  height++;
                });
              },
            ),
            TextAlignedToRight(text: 'Age'),

            ReusableCard(
              bgColor: kMainCardGbColor,
              cardChild: CardWithTextAndTwoRoundButtons(
                cardNumberText: age,
                startIcon: FontAwesomeIcons.minus,
                endIcon: FontAwesomeIcons.plus,
                onStartIconPress: () {
                  setState(() {
                    age--;
                  });
                },
                onEndIconPress: () {
                  setState(() {
                    age++;
                  });
                },
              ),
            ),

            BottomButton(
                onTap: () {
                  CalculatorBrain brain = CalculatorBrain(height, weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(brain.calculateBMI(),
                          brain.getResults(), brain.getInterpretation()),
                    ),
                  );
                },
                buttonTitle: 'CALCULATE'),

          ],
        ),
      ),
    );
  }
}
