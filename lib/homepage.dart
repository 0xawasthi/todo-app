import 'package:flutter/material.dart';
import 'package:todo_app/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Center(child: Text('TO DO')),
        backgroundColor: Colors.yellowAccent[700],
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: 'make todo app',
            taskCompleted: false,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
