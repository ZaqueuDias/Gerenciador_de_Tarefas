import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 10),
      child: Container(
        width: 300,
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 3),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          '17:00',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
