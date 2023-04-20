import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assignment/ui/screens/courses_screens.dart';
import 'package:assignment/ui/widgets/carousel.dart';
import 'package:assignment/ui/widgets/rating_widget.dart';
import 'package:assignment/ui/widgets/stars_widget.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: const Icon(Icons.menu),
            color: secondaryDarkColor,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child:RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: darkColor, fontSize: 40, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: 'Welcome to'),
                    TextSpan(text: ' the Future', style: TextStyle(color: secondaryColor)),
                    TextSpan(text: ' of Learning! ')
                  ]
                )
              ),
            )
          ),
          const SizedBox(height: 20),
          Flexible(
            child: Column(
                children: [
                  const Text("Start learning by best creators for", 
                  style: TextStyle(
                    color: darkColor,
                    fontSize: 20,
                    fontWeight: FontWeight.normal
                    )),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText("absolutely Free",
                        textStyle: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          color: secondaryColor
                          ),
                        speed: const Duration(milliseconds: 100),
                        )
                      ],
                    ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                  children: [
                    const SizedBox(width: 30),
                    MentorRatingWidget(),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text("50+", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Mentors")
                    ],),
                    const SizedBox(width: 10),
                    const VerticalDivider(color: Colors.black, thickness: 1),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      const Text("4.8/5", style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                    Row(
                      children: [StarRatingWidget(),
                      const Text("Ratings", style: TextStyle(fontSize: 12))
                    ],)
                      ]),
                ],),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => {"print bobo"},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                    Text(
                    "Start Learning now", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20
                  )),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  )
                  ],
                  )),            
                ],
              )
            ),
           Expanded(
            child: Container(
              height: 250,
              padding: EdgeInsets.only(top: 20),
              child: CarouselScroll()
            )

           )
          ]
        ),
    );
  }
}