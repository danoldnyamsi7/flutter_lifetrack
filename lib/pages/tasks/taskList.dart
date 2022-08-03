import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_ui/components/sign_btns.dart';
import 'package:todo_app_ui/components/textfield.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';

// import 'dart:math' as math;

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isCLicked = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor(),
        leading: Icon(Icons.menu),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createTaskModal(context);
        },
        child: Icon(Icons.add),
        backgroundColor: mainColor(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '19 Aug, Monday',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 17.0),
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
            SizedBox(
              height: 30.0,
            ),
            Container(
                color: Color.fromARGB(255, 238, 236, 236),
                width: deviceWidth(context) * .95,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: TodayList()
                // dropdown section.
                ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                color: Color.fromARGB(255, 238, 236, 236),
                width: deviceWidth(context) * .95,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: TomorrowList()
                // dropdown section.
                ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                color: Color.fromARGB(255, 238, 236, 236),
                width: deviceWidth(context) * .95,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: WeekList()
                // dropdown section.
                ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

class TodayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isComplete = false;
    return ExpandablePanel(
        header: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Today',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 18.0,
                ),
                Text(
                  '2/6',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey),
                )
              ],
            )
          ],
        ),
        collapsed: Container(),
        expanded: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Container(
                height: 8.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: const LinearProgressIndicator(
                  backgroundColor: Color.fromARGB(255, 219, 210, 210),
                  value: 0.3,
                  valueColor: AlwaysStoppedAnimation(Color(0XFFFFF535E)),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Checkbox(
                        value: isComplete,
                        onChanged: (value) => {isComplete = !isComplete},
                      ),
                    ),
                    const Text('Task1'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isComplete,
                        onChanged: (value) => {isComplete = !isComplete}),
                    const Text('Task2'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isComplete,
                        onChanged: (value) => {isComplete = !isComplete}),
                    const Text('Task3'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isComplete,
                        onChanged: (value) => {isComplete = !isComplete}),
                    const Text('Task1'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) => {isComplete = !isComplete}),
                    const Text('Task2',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough)),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) => {isComplete == !isComplete}),
                    const Text('Task3',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough)),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class TomorrowList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    return ExpandablePanel(
        header: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Tomorrow',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 18.0,
                ),
                Text(
                  '0/7',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey),
                )
              ],
            )
          ],
        ),
        collapsed: Container(),
        expanded: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Container(
                height: 8.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: const LinearProgressIndicator(
                  backgroundColor: Color.fromARGB(255, 219, 210, 210),
                  value: 0.0,
                  valueColor: AlwaysStoppedAnimation(Color(0XFFFFF535E)),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task1'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task2'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task3'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task1'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task2'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task3'),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class WeekList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    return ExpandablePanel(
        header: Column(
          children: [
            Row(
              children: const [
                Text(
                  'This Week',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 18.0,
                ),
                Text(
                  '2/14',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
        collapsed: Container(),
        expanded: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Container(
                height: 8.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: const LinearProgressIndicator(
                  backgroundColor: Color.fromARGB(255, 219, 210, 210),
                  value: 0.1,
                  valueColor: AlwaysStoppedAnimation(Color(0XFFFFF535E)),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task1'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked == !isClicked}),
                    const Text('Task2'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task3'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isClicked,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task1'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text('Task2'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) => {isClicked = !isClicked}),
                    const Text(
                      'Task3',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

void createTaskModal(context) {
  DateTime date = DateTime(2022, 08, 19);

  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => SingleChildScrollView(
            child: Container(
              height: deviceHeight(context) * .4,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  SizedBox(
                    height: deviceHeight(context) * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: deviceWidth(context) * .18,
                        height: deviceHeight(context) * .005,
                        child: Container(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight(context) * .01,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Task',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 184, 179, 179)),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        TextField1(
                            padding: EdgeInsets.all(10.0),
                            hintText: 'Task name',
                            width: deviceWidth(context) * .75,
                            obscureText: false)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * .005,
                  ),
                  Container(
                    width: deviceWidth(context)*.75,
                    margin: EdgeInsets.fromLTRB(60.0, 30.0, 60.0, 60.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                              'Due date',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 184, 179, 179)),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Container(
                              height: deviceHeight(context) * .05,
                              width: deviceWidth(context) * .32,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey),
                                       borderRadius: BorderRadius.circular(5.0)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                        '${date.year}.${date.month}.${date.day}',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),),
                                    // SizedBox(width: deviceWidth(context) * .035),
                                    GestureDetector(
                                        onTap: () async{
                                          // show calendar picker
                                          await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTIme(DateTIme.now()), lastDate: lastDate)
                                          print('select date bro!');
                                        },
                                        child:
                                            const Icon(Icons.calendar_month)),
                                  ]),
                            ),
                          ]),
                          
                          SizedBox(width: deviceWidth(context)*.04,),

                          
                          // two

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                              'Repeat',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 184, 179, 179)),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Container(
                              height: deviceHeight(context) * .05,
                              width: deviceWidth(context) * .32,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2.0, color: Color.fromARGB(255, 192, 189, 189)), 
                                      borderRadius: BorderRadius.circular(5.0)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        'Everyday', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),),
                                    // SizedBox(width: deviceWidth(context) * .035),
                                    GestureDetector(
                                        onTap: () {
                                          // show calendar picker
                                          print('select repeat bro!');
                                        },
                                        child:
                                            const Icon(Icons.calendar_month)),
                                  ]),
                            ),
                          ]),
                        ]),
                  ),
                  FilledButtons(
                      x: deviceWidth(context) * .75,
                      padding: EdgeInsets.all(15.0),
                      color: Colors.green,
                      text: 'Add new task',
                      action: () {
                        AlertDialog(
                          content: Text('new task added ;)'),
                        );
                      },
                      borderRadius: 5.0,
                      textStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900)),
                ],
              ),
            ),
          ));
}

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
