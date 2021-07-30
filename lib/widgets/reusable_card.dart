import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({this.cardChild, @required this.bgColor,this.hasBorder,this.onPress});

  final Widget cardChild;
  final Color bgColor;
  final bool hasBorder;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(5.0),
          // border: Border.all(color: Colors.blueAccent, width: 4),
        ),
      ),
    );
  }
}
