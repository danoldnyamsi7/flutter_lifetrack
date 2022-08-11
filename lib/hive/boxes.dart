import 'package:hive/hive.dart';
import '../model/task.dart';

class Boxes {
  static Box<Tasks> getTasks() {
    return Hive.box<Tasks>('tasks');
  }
}

