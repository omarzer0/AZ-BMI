import 'package:az_bmi/utils/constants.dart';
import 'package:flutter/material.dart';

class ImageWithCheckbox extends StatelessWidget {
  ImageWithCheckbox(
      {@required this.title, @required this.icon, @required this.isSelected});

  final IconData icon;
  final String title;
  final bool isSelected;

  Border _setBorder() {
    if (isSelected)
      return Border.all(color: kBottomContainerNgColor, width: 4);
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: _setBorder(),
      ),
      child: Column(
        children: [
          Align(child: Checkbox(value: isSelected, onChanged: (_) {}), alignment: Alignment.centerRight,),
          Icon(icon, size: 80),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 16),
            child: Text(
              title,
              style: kCardTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
