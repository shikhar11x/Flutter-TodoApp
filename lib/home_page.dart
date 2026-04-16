import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List TodoList = [
    ["Todo", false],
    ["Todo", false],
    ["Todo", false],
    ["Todo", false],
    ["Todo", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      TodoList[index][1] = !TodoList[index][1];
    });
  }

  void createNewTask() {
    showDialog(context: context, builder: (context){
      return
    }
    )
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("TODO"),
        backgroundColor: Colors.deepPurple[500],
        elevation: 10,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (context, index) {
          return TodoItem(
            isChecked: TodoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            todoText: TodoList[index][0],
          );
        },
      ),
    );
  }
}
