import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_ui/components/custome_clipPath.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [],
      ),
    );
  }
}







































//     return Stack(
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ClipPath(
//               clipper: Lifetrack_clipper(),
//               child: Container(height: height*.2,  color:Color(0xFFFF4F5A),),
//             ),
//             Container(
//               width: double.infinity,
//               // height: height * 0.45,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFF4F5A),
//                 // borderRadius: BorderDirectional.lerp(10, 12, 10),
//               ),
//               child: Center(
//                 child:
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                   Icon(
//                     Icons.check_box_outlined,
//                     color: Colors.white,
//                     size: 50,
//                   ),
//                   Text(
//                     'lifetrack',
//                     style: GoogleFonts.roboto(
//                         textStyle: Theme.of(context).textTheme.displayMedium,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white,
//                         fontSize: 50),
//                   ),
//                 ]),
//               ),
//             ),
//             Container(
//               width: width,
//               // height: height * 0.35,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               child: Align(
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
//                       child: SizedBox(
//                         width: width * .8,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all<Color>(
//                                 Color(0xFFFF4F5A)),
//                             shape: MaterialStateProperty.all<
//                                     RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30))),
//                           ),
//                           child: Text(
//                             'Sign up',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w900),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
//                       width: width * 0.8,
//                       decoration: BoxDecoration(color: Colors.white),
//                       child: TextButton(
//                           onPressed: () {},
//                           style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all<Color>(Colors.white),
//                             shape: MaterialStateProperty.all<
//                                     RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30))),
//                           ),
//                           child: Text(
//                             'Log in',
//                             style: TextStyle(
//                                 color: Color(0xFFFF4F5A),
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w900),
//                           )),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
