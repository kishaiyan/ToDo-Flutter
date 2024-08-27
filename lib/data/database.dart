import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final _box = Hive.box('toDo');

  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Do Exercise', false],
    ];
  }

  void loadData() {
    toDoList = _box.get("TODOLIST");
  }

  void updateData() {
    _box.put("TODOLIST", toDoList);
  }
}
