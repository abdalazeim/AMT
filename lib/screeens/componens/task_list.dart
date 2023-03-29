import 'package:flutter/material.dart';
import 'package:project1/screeens/componens/task_form.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskProviders =context.watch<TaskProvider>();
    return Container (
      child: ListView.builder(
          itemCount:taskProviders.tasks.length,
          itemBuilder: (context,index)
      {return ListView(
        children: [Text("6666")],
        //titile:Text("rrrr"),
       //padding:Image(image: AssetImage('assets/icons/mh.jpg'),),
      );
        },
      ),

    );

  }
}
