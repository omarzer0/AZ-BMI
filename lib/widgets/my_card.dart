import 'package:az_bmi/utils/constants.dart';
import 'package:az_bmi/widgets/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_with_text_and_two_round_buttons.dart';
import 'drop_down.dart';

class MyCard extends StatelessWidget {
  MyCard(
      {@required this.dropDownListNumber,
      @required this.onStartIconPress,
      @required this.onEndIconPress,
      @required this.shownNumber});

  final int shownNumber;
  final int dropDownListNumber;
  final Function onStartIconPress;
  final Function onEndIconPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: ReusableCard(
            bgColor: kMainCardGbColor,
            cardChild: CardWithTextAndTwoRoundButtons(
              cardNumberText: shownNumber,
              startIcon: FontAwesomeIcons.minus,
              endIcon: FontAwesomeIcons.plus,
              onStartIconPress: onStartIconPress,
              onEndIconPress: onEndIconPress,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ReusableCard(
            bgColor: kMainCardGbColor,
            cardChild: AZDropDown(listNumber: dropDownListNumber),
          ),
        )
      ],
    );
  }
}
