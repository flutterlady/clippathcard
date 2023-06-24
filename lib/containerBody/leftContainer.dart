import 'package:flutter/material.dart';
import '../clippathShape/leftInnerClip.dart';

class LeftContainer extends StatelessWidget {
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
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(39),
          ),
        ),
        color: Color(0xFF7165e3),
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
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                      color: Color(0xFF7165e3),
                    ),
                  ),
                ),
                Positioned(
                  top: 28,
                  right: 30,
                  bottom: 0,
                  left: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Naira Wallet',
                        style:
                            TextStyle(color: Color(0xFFf9fef4), fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 103,
                  left: 30,
                  right: 5,
                  bottom: 0,
                  child: Text(
                    'Balance',
                    style: TextStyle(
                      color: Color(0xFFa9a4ea),
                    ),
                  ),
                ),
                Positioned(
                  top: 53,
                  right: 0,
                  bottom: 43,
                  left: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'NGN',
                        style:
                            TextStyle(color: Color(0xFFf8fefc), fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  top: 30,
                  right: 0,
                  bottom: 0,
                  left: 30,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                              color: Color(0xFFfcfaf9),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                Positioned(
                  top: 184,
                  bottom: 24,
                  left: 25,
                  child: ClipPath(
                    clipper: LeftInnerClipper(),
                    child: Container(
                      height: 40,
                      width: 135,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(45),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(60),
                          ),
                        ),
                        color: Color(0xFFf4d048),
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
                              width: 145,
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
                                          bottomRight: Radius.circular(40),
                                          bottomLeft: Radius.circular(30),
                                        ),
                                      ),
                                      color: Color(0xFFf4d048),
                                    ),
                                    child: Center(
                                      child: Text('Withdraw',
                                          style: TextStyle(
                                              color: Color(0xFF472520),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.5)),
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
