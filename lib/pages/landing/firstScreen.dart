// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:todo_app_ui/components/clipper_container.dart';
// import 'package:todo_app_ui/components/custome_clipPath.dart';
// import 'package:todo_app_ui/utils/bgcolor.dart';
// import 'package:todo_app_ui/utils/device_height.dart';
// import 'package:todo_app_ui/utils/device_width.dart';

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
// Widget build(BuildContext context) {
// double height =10.00print('device height: ${deviceWidth(context)}');
// return Scaffold(
// body: Stack(children: [
//   ClipPath(
//     child: Container(color: Color(0XFFFF535E)),
//     clipper: Lifetrack_clipper(),

//   )
// ]),
// body: Column(
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Container(
//       width: deviceWidth(context),
//       height: deviceHeight(context) * .65,
//       child: Stack(
//         children: [
//         ],
//       ),
//     ),
//     Container(
//       color: Colors.white,
//       height: deviceHeight(context) * .30,
//       alignment: Alignment.center,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.fromLTRB(0, 60, 0, 0.0),
//                 child: SizedBox(
//                   width: deviceWidth(context) * .7,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                         padding: EdgeInsets.all(18),
//                         primary: Color(0XFFFF535E),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                         )),
//                     child: Text(
//                       'Sign up',
//                       style: TextStyle(
//                           fontSize: 14, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(0, 15, 0, 0.0),
//                 child: SizedBox(
//                     width: deviceWidth(context) * .7,
//                     child: GestureDetector(
//                       child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom(
//                             primary: Color(0XFFFF535E),
//                             padding: EdgeInsets.all(18),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30.0),
//                             )),
//                         child: Text(
//                           'Sign in',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0XFFFF535E),
//                           ),
//                         ),
//                       ),
//                     )),
//               )
//             ],
//           ),
//         ],
//       ),
//     )
//   ],
// ),
//     );
//   }
// }

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
//                 // borderRadius: BorderDirectional.lerp(10.0, 12, 10.0),
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
//                       margin: EdgeInsets.fromLTRB(0, 20, 0, 10.0),
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
//                       margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
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

/*

 child: Container(
                      width: deviceWidth(context),
                      height:  15.0,
                      alignment: Alignment.center,
                      color: mainColor(),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(children: [
                          Icon(
                            Icons.check_box_outlined,
                            size: 35,
                          ),
                          Text(
                            'lifetrack',
                            style: GoogleFonts.roboto(
                                textStyle:
                                    Theme.of(context).textTheme.displayMedium,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 35),
                          )
                        ]),
                      ),
                    ),
*/

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: deviceWidth(context),
//             height: deviceHeight(context),
//             color: Colors.white,
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.fromLTRB(0, 20, 0, 10.0),
//                   width: deviceWidth(context)*.7,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Sign up',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                     style:ElevatedButton.styleFrom(
//                        padding: EdgeInsets.all(500),
//                         primary: Color(0XFFFF535E),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                     ),
//                   ),
//                 )
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 20, 0, 10.0),
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
// //                         ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
