import 'package:flutter/material.dart';
import 'package:project1/screeens/componens/task_list.dart';

import 'add_taskbutton.dart';
import 'welcme.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Welcme(name:'we come',avatar:'assets/icons/abdu.jpg'),
      AddTaskButton(),
      TaskList(),
    ],);
  }
}
