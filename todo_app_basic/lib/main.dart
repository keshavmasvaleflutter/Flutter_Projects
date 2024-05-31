import 'dart:developer';
import 'package:flutter/material.dart';
import 'todo_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), 'ToDoAppDB1.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          '''CREATE TABLE ToDoData1(cardNo INTEGER NOT NULL AUTO_INCREMENT, title TEXT, description TEXT, date TEXT, PRIMARY KEY(cardNo))''');
    },
  );
  toDoList = await getToDoAppData();
  log(await getDatabasesPath());
   print(await getToDoAppData());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
