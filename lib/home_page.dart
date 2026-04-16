import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List TodoList =[
    ["todo", false],
    ["todo", false],
    ["todo", false],
    ["todo", false],
    ["todo", false]   

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("TODO"),
        backgroundColor: Colors.deepPurple[400],
        elevation: 10,
        ),
        body: ListView.builder(
          itemCount:TodoList.length ,
          itemBuilder: (context, index){
            return TodoItem(
              isChecked: TodoList[index][1],
               onChanged: onChanged,
                todoText: TodoList[index][0]
                );
          }, 
          )
      );
  }
}