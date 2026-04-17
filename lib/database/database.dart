import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List TodoList = [];

  final _myBox = Hive.box("mybox");

  void createData() {
    TodoList = [
      ["Todo", false],
      
    ];
  }

  void loadData(){
    TodoList=_myBox.get("TODOLIST");
  }
  void updateDataBase(){
    _myBox.put("TODOLIST", TodoList);
  }
}
