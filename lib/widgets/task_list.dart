import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState){
                taskData.updateTask(task );
              },
              // longPressCallback: (){
              //   taskData.deleteTask(task);
              // },
            );
          },
          itemCount: taskData.taskCount ,
        );
      },
    );
  }
}


// (bool ? checkboxState){
// setState(() {
// isChecked = checkboxState!;
// });