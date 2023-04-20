import 'package:assignment/ui/widgets/all_courses.dart';
import 'package:assignment/ui/widgets/background_carousel.dart';
import 'package:assignment/ui/widgets/browse_dropdown_widget.dart';
import 'package:assignment/ui/widgets/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 202, 207, 216),
      appBar: AppBar(
        title: Row(
              children: [
                Image.asset(
                  "assets/icons/appIcon.png",
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text('CiphersSchools', style: TextStyle(color: secondaryDarkColor, fontSize: 17, fontWeight: FontWeight.bold) )
              ]
          ),
        backgroundColor: primaryColor,
        elevation: 2,
        shadowColor: const Color.fromARGB(255, 237, 237, 237),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.compass),
            iconSize: 20,
            onPressed: () {}, 
            color: secondaryDarkColor,
          ),
          BrowseDropdown(),
          IconButton(
            constraints: BoxConstraints(maxWidth: 24),
            onPressed: () {}, 
            icon: const Icon(Icons.notifications_outlined), 
            color: secondaryDarkColor,
            iconSize: 20,
            ),
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 20,
            color: secondaryDarkColor,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackgroundCarouselScroll(),
            const SizedBox(height: 35),
            Row(
              children: [
                SizedBox(width: 12),
                Text("Recommended Courses", style: TextStyle(fontWeight: FontWeight.bold, color: secondaryDarkColor, fontSize: 20)),
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                Container(
                  width: 90,
                  color: primaryColor,
                  child: DropdownButton(
                    value: 1,
                    onChanged: (value) => print(value),
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        child: Text("Popular", style: TextStyle(color: secondaryDarkColor, fontSize: 12)),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Latest", style: TextStyle(color: secondaryDarkColor, fontSize: 12)),
                        value: 2,
                      ),
                  ],)
                )
              ],),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
                    CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
                    CourseCard("assets/images/python_course.png", "Python", "Learn Python Using...", "Number of videos 57\nCourse Time 10.2 hrs"),
                ],)
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                margin: EdgeInsets.only(left: 12),
                child: Text("Latest Courses", style: TextStyle(fontWeight: FontWeight.bold, color: secondaryDarkColor, fontSize: 20), textAlign: TextAlign.start,),
              ),      
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
                    CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
                    CourseCard("assets/images/python_course.png", "Python", "Learn Python Using...", "Number of videos 57\nCourse Time 10.2 hrs"),
                ],)
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                margin: EdgeInsets.only(left: 12),
                child: Text("Popular Categories", style: TextStyle(fontWeight: FontWeight.bold, color: secondaryDarkColor, fontSize: 20), textAlign: TextAlign.start,),
              ),      
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    CourseCard("assets/images/ielts.png", "Languify", "Master IELTS/TOEFL...", "AI generated feedback..\nTest Duration 30mins/.."),
                    CourseCard("assets/images/sql_course.png", "SQL", "SQL tutorial for ...", "Number of videos 3\nCourse Time 2.0 hrs"),
                    CourseCard("assets/images/python_course.png", "Python", "Learn Python Using...", "Number of videos 57\nCourse Time 10.2 hrs"),
                ],)
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                margin: EdgeInsets.only(left: 12),
                child: Text("All courses", style: TextStyle(fontWeight: FontWeight.bold, color: secondaryDarkColor, fontSize: 20), textAlign: TextAlign.start,),
              ),
              AllCoursesLayout(),
        ],)
      ),
    );
  }
}