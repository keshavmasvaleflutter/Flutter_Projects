import 'dart:developer';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

dynamic database;

class ToDoAppData {
  int? cardNo;
  String title;
  String description;
  String date;

  ToDoAppData(
      {this.cardNo,
      required this.title,
      required this.description,
      required this.date});

  Map<String, dynamic> toDoAppMap() {
    return {
      'cardNo': cardNo,
      'title': title,
      'description': description,
      'date': date,
    };
  }

  @override
  String toString() {
    return "{cardNo: $cardNo, title: $title, description: $description, date: $date}";
  }
}

Future<void> insertToDoAppData(ToDoAppData obj) async {
  final localDB = await database;

  await localDB.insert(
    "ToDoData1",
    obj.toDoAppMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  log("In insertFunction Task Add zala");
  //print(await getToDoAppData());
}

Future<List<ToDoAppData>> getToDoAppData() async {
  final localDB = await database;
  log("In getToDoAppData Function");
  List<Map<String, dynamic>> toDoAppMap = await localDB.query("ToDoData1");

  return List.generate(toDoAppMap.length, (i) {
    return ToDoAppData(
      cardNo: toDoAppMap[i]['cardNo'],
      title: toDoAppMap[i]['title'],
      description: toDoAppMap[i]['description'],
      date: toDoAppMap[i]['date'],
    );
  });
}

Future<void> deleteToDoTaskData(int data) async {
  final localDB = await database;
  await localDB.delete(
    "ToDoData1",
    where: "cardNo = ?",
    whereArgs: [data],
  );
  log("In deletetask function. Task Delete zala");
  //print(await getToDoAppData());
}

Future<void> updateToDoTask(ToDoAppData obj) async {
  log("In update");
  final localDB = await database;
  await localDB.update(
    "ToDoData1",
    obj.toDoAppMap(),
    where: "cardNo = ?",
    whereArgs: [obj.cardNo],
    conflictAlgorithm:ConflictAlgorithm.replace,
  );
  log("In Update task Function. Task Update zala");
  //print(await getToDoAppData());
}
