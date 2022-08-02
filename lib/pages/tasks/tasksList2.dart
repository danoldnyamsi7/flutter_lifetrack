// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';
// import 'package:todo_app_ui/utils/bgcolor.dart';
// import 'package:todo_app_ui/utils/device_height.dart';
// import 'package:todo_app_ui/utils/device_width.dart';

// import '../../components/today.dart';
// import '../../components/tomorrow.dart';
// import '../../components/week.dart';

// class TasksList2 extends StatefulWidget {
//   const TasksList2({Key? key}) : super(key: key);

//   @override
//   State<TasksList2> createState() => _TasksList2State();

// }

// class _TasksList2State extends State<TasksList2> {
//   @override
//   Widget build(BuildContext context) {
//        bool isClicked = false;
//    bool isCompleted = false;
//     return  Scaffold(
//       appBar: AppBar(
//         backgroundColor: mainColor(),
//         leading: Icon(Icons.menu),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           isClicked = !isClicked;
//         },
//         child: Icon(Icons.add),
//         backgroundColor: mainColor(),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 15.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '19 Aug, Monday',
//                     style:
//                         TextStyle(fontWeight: FontWeight.w900, fontSize: 17.0),
//                   ),
//                   SizedBox(
//                     height: deviceHeight(context) * .007,
//                   ),
//                   Text(
//                     'Your tasks for the week',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 13.0,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Container(
//                 color: Color.fromARGB(255, 238, 236, 236),
//                 width: deviceWidth(context) * .95,
//                 margin: EdgeInsets.symmetric(horizontal: 10),
//                 child: TodayList()
//                 // dropdown section.
//                 ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Container(
//                 color: Color.fromARGB(255, 238, 236, 236),
//                 width: deviceWidth(context) * .95,
//                 margin: EdgeInsets.symmetric(horizontal: 10),
//                 child: TomorrowList()
//                 // dropdown section.
//                 ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Container(
//                 color: Color.fromARGB(255, 238, 236, 236),
//                 width: deviceWidth(context) * .95,
//                 margin: EdgeInsets.symmetric(horizontal: 10),
//                 child: WeekList()
//                 // dropdown section.
//                 ),
//             SizedBox(
//               height: 15.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
 