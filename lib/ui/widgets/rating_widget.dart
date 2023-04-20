import 'package:assignment/constants.dart';
import 'package:flutter/material.dart';

Widget MentorRatingWidget(){
  return Container(
    width: 80,
    height: 40,
    child: Stack(
      children: const <Widget>[
        Positioned(
          left: 0,
            child: CircleAvatar(
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: secondaryDarkColor,
              backgroundImage: AssetImage('assets/images/mentor2.png'), // Provide your custom image
            ),
          )
        ),
        Positioned(
          left: 20,
            child: CircleAvatar(
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: secondaryDarkColor,
              backgroundImage: AssetImage('assets/images/mentor2.png'), // Provide your custom image
            ),
          )
        ),
        Positioned(
          left: 40,
            child: CircleAvatar(
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: secondaryDarkColor,
              backgroundImage: AssetImage('assets/images/mentor3.png'), // Provide your custom image
            ),
          ),
        ),
      ],
    ),
  );
}