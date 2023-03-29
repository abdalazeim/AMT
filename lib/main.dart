import 'package:flutter/material.dart';
import 'package:project1/screeens/Home.dart';
import 'package:project1/screeens/componens/task_form.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_add_to_list/screens/home.dart';

void main() { runApp(MyApp());
    /*ChangeNotifierProvider(
      create: (_) =>TaskProvider(),
      child: MyApp(),)
  );*/
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'add to list',
       home: Home(),
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );

  }
  }