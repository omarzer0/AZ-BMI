import 'package:az_bmi/utils/constants.dart';
import 'package:az_bmi/widgets/round_icon_button.dart';
import 'package:flutter/cupertino.dart';

class CardWithTextAndTwoRoundButtons extends StatelessWidget {
  CardWithTextAndTwoRoundButtons(
      {@required this.cardNumberText,
      @required this.onEndIconPress,
      @required this.startIcon,
      @required this.endIcon,
      @required this.onStartIconPress});

  final int cardNumberText;
  final IconData startIcon;
  final IconData endIcon;

  final Function onEndIconPress;
  final Function onStartIconPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundIconButton(icon: startIcon, onPress: onStartIconPress),
        Text(
          cardNumberText.toString(),
          style: kNumberTextStyle,
        ),
        RoundIconButton(icon: endIcon, onPress: onEndIconPress)
      ],
    );
  }
}
