import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
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
                MyButton(onPressed: onSave, text: 'Save'),
                SizedBox(width: 50),
                MyButton(onPressed: onCancel, text: 'Cancel'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
