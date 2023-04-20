import 'package:assignment/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget BackgroundCarouselScroll(){
  return CarouselSlider(
    options: CarouselOptions(
      height: 185,
      autoPlay: true, 
      autoPlayInterval: Duration(seconds: 3), 
      autoPlayAnimationDuration: Duration(milliseconds: 800), 
      autoPlayCurve: Curves.fastOutSlowIn, 
      pauseAutoPlayOnTouch: true,
      scrollDirection: Axis.horizontal,
      viewportFraction: 1.0
      ),
  items: ["assets/images/flutter.png","assets/images/python_course.png","assets/images/ielts.png", "assets/images/mern.png"].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(i, fit: BoxFit.fill)
        );
      },
    );
  }).toList()
);
}