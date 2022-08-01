import 'package:flutter/material.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    // List<Row> todayTasksList = [
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Checkbox(
    //           value: isChecked,
    //           onChanged: (val) {
    //             setState(() => isChecked = !isChecked);
    //           })
    //     ],
    //   )
    // ];

    List list = ['jgsdh', 'khffd', 'kjsdhd'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor(),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '19 Aug, Monday',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17.0),
                ),
                SizedBox(
                  height: deviceHeight(context) * .007,
                ),
                Text(
                  'Your tasks for the week',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 238, 236, 236),
            width: deviceWidth(context) * .95,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
            // dropdown section.
          ),
        ],
      ),
    );
  }
}


