import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_app_ui/components/sign_btns.dart';
import 'package:todo_app_ui/components/textfield.dart';
import 'package:todo_app_ui/hive/boxes.dart';
import 'package:todo_app_ui/model/task.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';
import 'package:todo_app_ui/utils/enums.dart';

// import 'dart:math' as math;

class TasksList extends StatefulWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  DateTime date = DateTime.now();

    // DateTime? date;
    DateTime? dueDate;
    DateTime createdDate = DateTime.now();
    String? taskName;

    getDate(){
      if(dueDate == null){
        return '${date.year}.${date.month}.${date.day}';
      }else{
        return '${dueDate?.year}.${dueDate?.month}.${dueDate?.day}';
      }
    }

  void createTaskModal(context) {
    // List<Tasks> tasks = [];

    addTask(
      String title,
      DateTime createdDate,
      DateTime dueDate,
    ) {

      TaskStatus status = TaskStatus.processing;
      final newTask = Tasks(
          title: title,
          createdDate: createdDate,
          dueDate: dueDate,
          status: status);

      final box = Boxes.getTasks();
      box.add(newTask);
      
    }

    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => SingleChildScrollView(
              child: Container(
                height: deviceHeight(context) * .4,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  children: [
                    StatefulBuilder(builder: (context, setState) {
                      return Container(
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
                                        color:
                                            Color.fromARGB(255, 184, 179, 179)),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  TextField1(
                                      onChange: (String value) {
                                        // print(value);
                                        setState(() {
                                          taskName = value;
                                        });
                                        print(value);
                                      },
                                      padding: EdgeInsets.all(10.0),
                                      hintText: 'Task name',
                                      width: deviceWidth(context) * .75,
                                      obscureText: false),
                                  Text('$taskName')
                                ],
                              ),
                            ),
                            SizedBox(
                              height: deviceHeight(context) * .005,
                            ),
                            Container(
                              width: deviceWidth(context) * .75,
                              margin:
                                  EdgeInsets.fromLTRB(60.0, 30.0, 60.0, 60.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Due date',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 184, 179, 179)),
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
                                                    width: 1.0,
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    getDate(),
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                  // SizedBox(width: deviceWidth(context) * .035),
                                                  GestureDetector(
                                                      onTap: () async {
                                                        // show calendar picker
                                                        DateTime? selectedDate =
                                                            await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDate:
                                                                    DateTime
                                                                        .now(),
                                                                firstDate: DateTime(
                                                                    DateTime.now()
                                                                            .year -
                                                                        5),
                                                                lastDate: DateTime(
                                                                    DateTime.now()
                                                                            .year +
                                                                        5));

                                                        if (selectedDate !=
                                                            null) {
                                                          setState(() => {
                                                                dueDate =
                                                                    selectedDate
                                                              });
                                                        } else {
                                                          AlertDialog(
                                                            content: Container(
                                                              child: Text(
                                                                  'Please set a deadline'),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      child: const Icon(Icons
                                                          .calendar_month)),
                                                ]),
                                          ),
                                        ]),

                                    SizedBox(
                                      width: deviceWidth(context) * .04,
                                    ),

                                    // two

                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Repeat',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 184, 179, 179)),
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
                                                    width: 2.0,
                                                    color: Color.fromARGB(
                                                        255, 192, 189, 189)),
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Everyday',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                  // SizedBox(width: deviceWidth(context) * .035),
                                                  GestureDetector(
                                                      child: const Icon(Icons
                                                          .calendar_month)),
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
                                  addTask(taskName!, createdDate, dueDate!);
                                  print('task name: ${taskName} created date:${createdDate.day} due date:${dueDate?.day}');
                                },
                                borderRadius: 5.0,
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    showCalendar() async {
      var newDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5));

      if (newDate == null) {
        var formatDate = '${newDate?.year},${newDate?.month},${newDate?.day}';
        setState(() {
          date = DateTime.parse(formatDate);
        });
        print('date is now: ${date}');
      } else {
        return 'You did not choose a date!';
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor(),
        leading: const Icon(Icons.menu),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createTaskModal(context);
        },
        child: const Icon(Icons.add),
        backgroundColor: mainColor(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '19 Aug, Monday',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 17.0),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * .007,
                  ),
                  const Text(
                    'Your tasks for the week',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13.0,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
                color: const Color.fromARGB(255, 238, 236, 236),
                width: deviceWidth(context) * .95,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TodayList()
                // dropdown section.
                ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                color: const Color.fromARGB(255, 238, 236, 236),
                width: deviceWidth(context) * .95,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TomorrowList()
                // dropdown section.
                ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                color: const Color.fromARGB(255, 238, 236, 236),
                width: deviceWidth(context) * .95,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const WeekList()
                // dropdown section.
                ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

class TodayList extends StatefulWidget {
  const TodayList({Key? key}) : super(key: key);

  @override
  State<TodayList> createState() => _TodayListState();
}

class _TodayListState extends State<TodayList> {
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
                  value: 0,
                  valueColor: AlwaysStoppedAnimation(Color(0XFFFFF535E)),
                ),
              ),
            ),
            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         GestureDetector(
            //           onTap: () => {},
            //           child: Checkbox(
            //             value: isComplete,
            //             onChanged: (value) => {isComplete = !isComplete},
            //           ),
            //         ),

            //       ],
            //     ),

            //   ],
            // ),
          ],
        ));
  }
}

class TomorrowList extends StatefulWidget {
  const TomorrowList({Key? key}) : super(key: key);

  @override
  State<TomorrowList> createState() => _TomorrowListState();
}

class _TomorrowListState extends State<TomorrowList> {
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
              children: [],
            ),
          ],
        ));
  }
}

class WeekList extends StatefulWidget {
  const WeekList({Key? key}) : super(key: key);

  @override
  State<WeekList> createState() => _WeekListState();
}

class _WeekListState extends State<WeekList> {
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
                  value: 0,
                  valueColor: AlwaysStoppedAnimation(Color(0XFFFFF535E)),
                ),
              ),
            ),
            Column(
              children: [],
            ),
          ],
        ));
  }
}
