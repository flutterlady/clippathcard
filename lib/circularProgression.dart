import 'package:flutter/material.dart';
import 'dart:math';

class CircularProgressBar extends StatelessWidget {
  final double progressPercentage;
  final Widget child;
  final Color progressColor;
  // final Color backgroundColor;
  final double strokeWidth;
  final double radius;

  CircularProgressBar({
    required this.progressPercentage,
    required this.child,
    this.progressColor = Colors.black,
    // this.backgroundColor = Colors.grey,
    this.strokeWidth = 1.5,
    this.radius = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      child: Transform.scale(
        scale: 1.5, // Adjust the scale factor to make it larger

        child: Stack(alignment: Alignment.center, children: [
          CircularProgressIndicator(
            value: progressPercentage / 100,
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
            // backgroundColor: backgroundColor,
            strokeWidth: strokeWidth,
          ),

          Container(
            // margin: EdgeInsets.all(10),\
            // padding: EdgeInsets.all(8),
            width: 30, // Set the width of the CircleAvatar
            height: 40, // Set the height of the CircleAvatar
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/monkey.png',
              ),
            ),
          ),
          // Place your ChildAvatar widget here
        ]),
      ),

      //  1.
      // children: [
      //   Positioned(
      //     // top: 0,
      //     // bottom: 0,
      //     child: Transform.scale(
      //       scale: 3.0, // Adjust the scale factor to make it larger

      //       child: CircularProgressIndicator(
      //         value: progressPercentage / 100,
      //         valueColor: AlwaysStoppedAnimation<Color>(progressColor),
      //         backgroundColor: backgroundColor,
      //         strokeWidth: strokeWidth,
      //       ),
      //     ),
      //   ),

      // Center(child: child),

      // 2.
      //     Positioned(
      //       top: 0,
      //       bottom: 150,
      //       // right: 5,
      //       child: Align(
      //         child: CircleAvatar(
      //           radius: 60,
      //           backgroundImage: AssetImage('assets/monkey.png'),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

void main() {
  // runApp(MaterialApp(
  home:
  Scaffold(
    // appBar: AppBar(
    //   title: Text('Circular Progress Bar Example'),
    // ),
    body: CircularProgressBar(
      progressPercentage: 75.0,
      progressColor: Colors.black,
      // backgroundColor: Colors.grey,
      strokeWidth: 1.5,
      radius: 60.0,
      child: Align(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/monkey.png'),
        ),
      ),
    ),
  );
}

// class CircularProgressBar extends StatelessWidget {
//   final double progressPercentage;
//   final Widget child;
//   final Color progressColor;
//   // final Color backgroundColor;
//   final double strokeWidth;
//   final double radius;

//   CircularProgressBar({
//     required this.progressPercentage,
//     required this.child,
//     this.progressColor = Colors.black,
//     // this.backgroundColor = Colors.grey,
//     this.strokeWidth = 2.0,
//     this.radius = 50.0,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: radius * 2,
//       height: radius* 2,
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             left: 0,
//             child: CircularProgressIndicator(
//               value: progressPercentage / 100,
//               valueColor: AlwaysStoppedAnimation<Color>(progressColor),
//               // backgroundColor: backgroundColor,
//               strokeWidth: strokeWidth,
//               // size : 100,
//             ),
//           ),
//           Positioned(
//             top: 40,
//             left: 50,
//             // child: Align(
//             //   child: CircleAvatar(
//             //     radius: 15,
//             //     backgroundImage: AssetImage('assets/monkey.png'),
//             //   ),R
//             // ),

//             child: Align(
//               child: CircleAvatar(
//                 radius: 15,
//                 backgroundImage: AssetImage('assets/monkey.png'),
//               ),
//             ),
//           ),
//           //   alignment: Alignment.center,
//           // ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   child:
//   Scaffold(
//     backgroundColor: Colors.yellow,
//     appBar: AppBar(
//       title: Text('Circular Progress Bar Example'),
//     ),
//     body: CircularProgressBar(
//       progressPercentage: 75.0,
//       progressColor: Colors.black,
//       // backgroundColor: Colors.grey,
//       strokeWidth: 2.0,
//       radius: 150.0,

//       child: Align(
//         child: CircleAvatar(
//           radius: 15,
//           backgroundImage: AssetImage('assets/monkey.png'),
//         ),
//       ),

//       // Align(
//       //   alignment: Alignment.center,
//       //   child: CircleAvatar(
//       //     radius: 40,
//       //     backgroundImage: AssetImage('assets/monkey.png'),
//       //   ),
//     ),
//   );
// }
