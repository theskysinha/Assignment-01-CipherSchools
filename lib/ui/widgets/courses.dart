import 'package:assignment/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

Widget CourseCard( String imgurl, String tags, String title, String description) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    child: FillImageCard(
    width: 180,
    heightImage: 140,
    imageProvider: AssetImage(imgurl),
    tags: [_tag(tags, () {})],
    title: _title(title),
    description: _content(description),
    )
  );
}

Widget _title(String title) {
  return Text(
    title,
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: darkColor),
  );
}

Widget _content(String description) {
  return Text(
    description,
    style: TextStyle(color: darkColor),
  );
}

Widget _tag(String tag, VoidCallback onPressed) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: secondaryColor),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(
        tag,
        style: TextStyle(color: primaryColor),
      ),
    ),
  );
}