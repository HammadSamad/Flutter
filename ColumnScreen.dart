import 'package:flutter/material.dart';

class Columnscreen extends StatelessWidget {
  const Columnscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 500,
        color: Color.fromARGB(255, 50, 50, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 100,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            Container(
              height: 50,
              width: 100,
              color: Color.fromARGB(255, 0, 255, 0),
            ),
            Container(
              height: 50,
              width: 100,
              color: Color.fromARGB(255, 0, 26, 255),
            ),
            Container(
              height: 50,
              width: 100,
              color: Color.fromARGB(255, 238, 255, 0),
            ),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Center(
//               child: Container(
//                 height: 50,
//                 width: 100,
//                 color: Color.fromARGB(255, 255, 0, 0),
//               ),
//             ),
//             Container(
//               height: 50,
//               width: 100,
//               color: Color.fromARGB(255, 0, 255, 0),
//             ),
//             Container(
//               height: 50,
//               width: 100,
//               color: Color.fromARGB(255, 0, 26, 255),
//             ),
//             Container(
//               height: 50,
//               width: 100,
//               color: Color.fromARGB(255, 0, 238, 255),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
