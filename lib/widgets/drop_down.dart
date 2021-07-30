import 'package:flutter/material.dart';

class AZDropDown extends StatefulWidget {
  final listNumber;

  const AZDropDown({@required this.listNumber});

  @override
  _AZDropDown createState() => _AZDropDown(listNumber: listNumber);
}

class _AZDropDown extends State<AZDropDown> {
  _AZDropDown({this.listNumber});

  final listNumber;
  String dropdownValue = "";
  final _underLineContainer = Container(
    height: 0,
    color: Colors.white,
  );

  final _icon = Icon(
    Icons.arrow_drop_down,
    color: Colors.black,
  );

  final weightMeasre = ['kg', 'lb']
      .map((e) => DropdownMenuItem<String>(
            child: Text(e),
            value: e,
          ))
      .toList();

  final heightMeasre = ['cm', 'm']
      .map((e) => DropdownMenuItem<String>(
            child: Text(e),
            value: e,
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: DropdownButton(
          value: dropdownValue == ""
              ? listNumber == 1
                  ? weightMeasre[0].value
                  : heightMeasre[0].value
              : dropdownValue,
          items: listNumber == 1 ? weightMeasre : heightMeasre,
          iconSize: 24,
          elevation: 16,
          underline: _underLineContainer,
          style: TextStyle(color: Colors.black, fontSize: 20),
          icon: _icon,
          isExpanded: true,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
        ),
      ),
    );
  }
}
