import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(
        icon,
        size: 12,
      ),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 24.0, height: 24.0),
      shape: CircleBorder(),
      fillColor: Colors.black,
    );
  }
}
