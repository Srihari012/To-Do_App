import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase{
  List toDoList=[];

  final _mybox= Hive.box('mybox');

  void createInitialData(){
      toDoList=[
        ["Welcome",false],
      ];
  }

  void loadData(){
    toDoList=_mybox.get("TODOLIST");
  }

  void updateDataBase(){
    _mybox.put("TODOLIST", toDoList);
  }

}