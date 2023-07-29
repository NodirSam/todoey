import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget  {

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback});

  late bool isChecked;
  late String taskTitle;
  late Function checkboxCallback;
  //late Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //onLongPress: longPressCallback(),
      title: Text(
        taskTitle ,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked ,
        onChanged: (newValue){
          checkboxCallback(newValue);
        },
        //onChanged: toggleCheckboxState!,
      ),
    );
  }
}

// (bool? value) {}

