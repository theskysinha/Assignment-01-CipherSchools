import 'package:assignment/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget CarouselScroll(){
  return CarouselSlider(
    options: CarouselOptions(
      height: 220,
      autoPlay: true, 
      autoPlayInterval: Duration(seconds: 3), 
      autoPlayAnimationDuration: Duration(milliseconds: 800), 
      autoPlayCurve: Curves.fastOutSlowIn, 
      pauseAutoPlayOnTouch: true,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal, 
      viewportFraction: 0.53
      ),
  items: [
    CarouselCard(Icons.menu_book_sharp, "Q-Rated Content", "Unlock quality content with Q-Rated Content!"),
    CarouselCard(Icons.memory_rounded, "Projects", "Get hands-on experience with real-time proejcts guided by expert mentors!"),
    CarouselCard(Icons.people_alt_outlined, "Mentors", "Start learning from the mentors coming from giant corporations like Microsoft, Google, Amazon, Paypal, etc!"),
    CarouselCard(Icons.control_point_duplicate_sharp, "Earn CipherPoints", "Earn exclusive rewards by developing your skills with us!")
  ].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.48,
          height: 190,
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: const BoxDecoration(  
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: secondaryDarkColor
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(13, 20 ,0, 0),
            child:i
            )
        );
      },
    );
  }).toList()
);
}

Widget CarouselCard(IconData iconData, String title, String description){
  return 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
           Container(
            width: 50,
            height: 50,
            child: Icon(iconData ,color: secondaryColor),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white),
          ),
          const SizedBox(width: 47),
          SvgPicture.asset("assets/icons/free_tag.svg", width:20, height: 30),
      ],),
      const SizedBox(height: 20),
      Text(title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10),
      Text(description, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300)),
  ]);
}