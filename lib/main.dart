import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart
import 'clippathShape/leftClip.dart';
import 'clippathShape/rightClip.dart';
import 'clippathShape/rightInnerClip.dart';
import 'clippathShape/leftInnerClip.dart';
import '../other.dart';
import 'bottomNav.dart';
import 'containerBody/leftContainer.dart';
import 'containerBody/rightContainer.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
          // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 45),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFbdbdbd),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            'Demscript',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF7264ea),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 59,
                        width: 60,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(25),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFf2f2f2),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/bell.png',
                            color: Color(0xFF442550),
                            height: 25,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        ClipPath(
                          clipper: LefBottomClipper(),
                          child: LeftContainer(),
                        ),
                        Spacer(),
                        ClipPath(
                          clipper: RighBottomClipper(),
                          child: RightContainer(),
                        ),
                      ],
                    ),
                  ]),
            ),
            Body(),
            MyApp(),
          ]),
        ),
      ),
    );
  }
}
