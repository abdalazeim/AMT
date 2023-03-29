import 'package:flutter/material.dart';
import 'package:project1/models/task.dart';
import 'package:project1/providers/task_providers.dart';
import 'package:provider/provider.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({Key? key}) : super(key: key);

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _forkey = GlobalKey<FormState>();
  final taskTitle =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -40.0,
            top: -40.0,
            child: CircleAvatar(
            child: Icon(Icons.close),
            backgroundColor: Colors.red,
          ),),
Form(
  key: _forkey,
  child: Column(
    children: [
      Padding(
  padding:EdgeInsets.all(80.0),
        child: TextFormField(
        controller: taskTitle,
        decoration: InputDecoration(hintText: "Add tasl title"),
    ),
      ),
    Padding(

      padding:EdgeInsets.all(80.0),
    child: TextButton(child: Text('Add task'),
    onPressed: ()  {
   if(_forkey.currentState!.validate()) {
     Navigator.of(context).pop();
     context.read<TaskProvider>().addTask(
         Task(title: taskTitle.text, completed: false,)

     );
   }
      },
    ),
    )
],
  ),),
        ],

      ),
    );
  }
}

class TaskProvider {
  get tasks => null;

  addTask(Task task) {}
}

