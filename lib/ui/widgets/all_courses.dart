
import 'package:flutter/material.dart';

import 'courses.dart';

Widget AllCoursesLayout(){
  return Column(
    children: [
      Row(
        children: [
          SizedBox(width: 10),
          CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
          CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
      ],),
       Row(
        children: [
          SizedBox(width: 10),
          CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
          CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
      ],),
       Row(
        children: [
          SizedBox(width: 10),
          CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
          CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
      ],),
       Row(
        children: [
          SizedBox(width: 10),
          CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
          CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
      ],),
       Row(
        children: [
          SizedBox(width: 10),
          CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
          CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
      ],),
        Row(
        children: [
          SizedBox(width: 10),
          CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
          CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
      ],)
  ]);
}