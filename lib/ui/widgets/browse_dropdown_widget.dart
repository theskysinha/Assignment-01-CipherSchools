import 'package:assignment/constants.dart';
import 'package:flutter/material.dart';

String dropdownValue = 'Browse';

Widget BrowseDropdown() {
  return Padding(
    padding: EdgeInsets.only(top: 4),
    child: Container(
      width: 70,
      child: DropdownButton<String>(
        isExpanded: true,
    value: dropdownValue,
    icon: const Icon(Icons.arrow_drop_down_rounded),
    style: const TextStyle(
      color: secondaryDarkColor
    ),
    onChanged: (String? newValue) {
      print(newValue);
    },
    items: <String>['Browse','App Development', 'Web Development', 'Game Development', 'Data Structures', 'Machine Leaning']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(color: secondaryDarkColor, fontSize: 12)),
        );
      })
      .toList(),
    )
    )
  );
}
