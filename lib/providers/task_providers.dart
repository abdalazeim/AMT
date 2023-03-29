import 'package:flutter/material.dart';

import '../models/task.dart';
class TaskProviders extends ChangeNotifier {
List<Task> _taskS =[
  Task(
    title: 'my fasrt task',
    completed: false,
  )

];
List<Task> get task{
  return _taskS;
}
void addTask(task) {
  _taskS.add(task);
  notifyListeners();

}
void removeTask(index) {
  _taskS.removeAt(index);
  notifyListeners();

}
void makeTaskCompleted(index){
  _taskS[index].completed =!_taskS[index].completed;
  notifyListeners();

}
}