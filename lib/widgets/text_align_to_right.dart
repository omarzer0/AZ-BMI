import 'package:flutter/material.dart';

class TextAlignedToRight extends StatelessWidget {

  const TextAlignedToRight({@required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Align(
        child: Text(text),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
