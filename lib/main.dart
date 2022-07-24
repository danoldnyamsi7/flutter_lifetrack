import 'package:flutter/material.dart';
import 'package:todo_app_ui/pages/forms/signin.dart';
import 'package:todo_app_ui/pages/forms/signup.dart';
import 'package:todo_app_ui/pages/get_started/getStarted.dart';
import 'package:todo_app_ui/pages/landing/firstScreen.dart';
import 'package:todo_app_ui/pages/onboarding/onboarding_1.dart';
import 'package:todo_app_ui/pages/onboarding/onboarding_2.dart';
import 'package:todo_app_ui/pages/onboarding/onboarding_3.dart';
import 'package:todo_app_ui/pages/tasks/createTask.dart';
import 'package:todo_app_ui/pages/tasks/taskList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/first_page',
      routes: {
        '/': (context) => TasksList(),
        '/first_page': (context) => FirstScreen(),
        '/tasks_list': (context) => TasksList(),
        '/signup': (context) => Signup(),
        '/signin': (context) => Signin(),
        '/get_started': (context) => GetStarted(),
        '/onboarding_1': (context) => Onboarding_1(),
        '/onboarding_2': (context) => Onboarding_2(),
        '/onboarding_3': (context) => Onboarding_3(),
        '/create_task': (context) => CreateTask(),
      },
    );
  }
}
