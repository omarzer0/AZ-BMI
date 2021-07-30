

import 'package:az_bmi/utils/constants.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: kLargeTextStyle,
        ),
        color: kBottomContainerNgColor,
        margin: EdgeInsets.all( 10.0),
        padding: EdgeInsets.only(bottom: 16.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}