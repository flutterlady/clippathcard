import 'package:flutter/material.dart';
import '../clippathShape/rightInnerClip.dart';
import '../circularProgression.dart';

class RightContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      height: 260,
      width: 180,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(39),
          ),
        ),
        color: Color(0xFFf2cd48),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 260,
              width: 420,
              child: Stack(children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: 200,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(29),
                        bottomLeft: Radius.circular(40),
                      ),
                      color: Color(0xFFf2cd48),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 78,
                  bottom: 0,
                  left: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircularProgressBar(
                        progressPercentage: 75,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/monkey.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 25,
                  right: 5,
                  bottom: 0,
                  child: Text(
                    '70%',
                    style: TextStyle(
                      color: Color(0xFF421b46),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 155,
                  right: 0,
                  bottom: 0,
                  left: 25,
                  child: Text(
                    'Profile Completion',
                    style: TextStyle(
                      color: Color(0xFF4f1e35),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  top: 184,
                  bottom: 24,
                  left: 25,
                  child: ClipPath(
                    clipper: InnerRightClipper(),
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                        ),
                        color: Color(0xFFe1bc49),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 51,
                              width: 140,
                              child: Stack(children: [
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  left: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          topLeft: Radius.circular(35),
                                          bottomRight: Radius.circular(35),
                                          bottomLeft: Radius.circular(40),
                                        ),
                                      ),
                                      color: Color(0xFFe1bc49),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Complete',
                                        style: TextStyle(
                                            color: Color(0xFF562b38),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
    );
  }
}
