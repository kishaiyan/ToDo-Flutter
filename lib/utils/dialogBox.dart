// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/utils/button_action.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orange[200],
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            //get User Input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),

            //buttons to save or cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  text: 'save',
                  onPressed: onSave,
                ),
                Buttons(
                  text: 'cancel',
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
      title: Text("Add New ToDo Activity"),
    );
  }
}
