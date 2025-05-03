import 'package:flutter/material.dart';
import 'package:todo_app/utilities/dialog_box.dart';
import 'package:todo_app/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of to do task
  List toDoList = [
    ["make todo app", false],
    ["do exercise", false],
    ["eat", true],
    ["sleep", false],
    ["Do work", true],
    ["Do work", true],
    ["Do work", true],
  ];

  // checkbox clicked
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow[100],
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text('TO DO', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        // backgroundColor: Colors.yellowAccent[700],
        backgroundColor: Colors.black45,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add, color: Colors.black),
        backgroundColor: Color(0xff48bfe3),
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
