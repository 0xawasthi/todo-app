import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            SizedBox(height: 20),

            // buttons => save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(onPressed: () {}, text: 'Save'),
                SizedBox(width: 50),
                MyButton(onPressed: () {}, text: 'Cancel'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
