import 'package:flutter/material.dart';
import '../bottomNav.dart';

class Body extends StatelessWidget {
  @override
  Widget build(context) {
    return
        // Scaffold(
        Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [Colors.blue, Colors.red], // Specify your colors here
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //   ),
      // ),
      height: 450,
      width: 600,
      padding: EdgeInsets.symmetric(horizontal: 17.5, vertical: 15),
      color: Color(0xFFf5f5f5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Actions',
            style: TextStyle(
              color: Color(0xFF2f2f2f),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Container(
              height: 105,
              width: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                color: Color(0XFFffffff),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Image.asset(
                      'assets/phone.png',
                      height: 30,
                      color: Color(0xFFf36b0b),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Airtime'),
                  ]),
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              height: 105,
              width: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                color: Color(0XFFffffff),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Image.asset(
                      'assets/wifi.png',
                      height: 30,
                      color: Color(0XFFef6e0f),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Data'),
                  ]),
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              height: 105,
              width: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                color: Color(0XFFffffff),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          'assets/cabletv.png',
                          height: 20,
                          color: Color.fromARGB(255, 255, 166, 0),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Cable Tv')
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              height: 105,
              width: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                color: Color(0XFFffffff),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Image.asset(
                      'assets/more.png',
                      height: 33,
                      color: Color(0xFFea732a),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('More'),
                  ]),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text('Recent Activity',
                  style: TextStyle(
                    color: Color(0xFF2f2f2f),
                    // color: Color(0xFF272727),
                  )),
              SizedBox(
                width: 230,
              ),
              Text('see all',
                  style: TextStyle(
                    color: Color(0xFFffaf67),
                    // color: Color(0xFF272727),
                  )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(0),
                shape: BoxShape.circle,
                color: Color(0xFFffffff),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset(
                  'assets/folders.png',
                  height: 50,
                  width: 20,
                  color: Color(0xFFfceabc),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            child: Text(
              'Looks like there\'s no recent activity to show here.Gets',
              style: TextStyle(
                color: Color(0xFFa8a8a8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85),
            child: Text(
              'started by making a transactions',
              style: TextStyle(
                color: Color(0xFFa8a8a8),
              ),
            ),
          ),
          // Text('Looks like there\'s no recent activity yo show here.Get'),
          SizedBox(
            height: 30,
          ),
          // MyApp(),
        ],
      ),
    );
  }
}
