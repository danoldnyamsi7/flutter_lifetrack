import 'package:hive/hive.dart';

part 'task.g.dart';

@HiveType(typeId: 0)
class Tasks extends HiveObject {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late DateTime createdDate;

  @HiveField(2)
  late DateTime dueDate;

  @HiveField(3)
  late DateTime? updatedDate;

  @HiveField(4)
  late Enum status;

  Tasks({required this.title, required this.createdDate,  required this.dueDate, required this.status, this.updatedDate });
}
