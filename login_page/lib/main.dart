import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'signin.dart';

class LoginFormData {
  final String username;
  final String name;
  final String email;
  final String password;

  LoginFormData({
    required this.username,
    required this.name,
    required this.email,
    required this.password,
  });
  Map<String, dynamic> loginFormMap() {
    return {
      "username": username,
      "name": name,
      "email": email,
      "password": password,
    };
  }

  @override
  String toString() {
    return "{username: $username, name:$name, email:$email, password:$password}";
  }
}

dynamic database;

List<LoginFormData> user = [];

Future<void> insertLoginFormData(LoginFormData obj) async {
  final localDB = await database;

  await localDB.insert(
    "LOGINFORM",
    obj.loginFormMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<LoginFormData>> getLoginFormData() async {
  final localDB = await database;
  List<Map<String, dynamic>> loginFormMap = await localDB.query("LOGINFORM");

  return List.generate(loginFormMap.length, (i) {
    return LoginFormData(
      username: loginFormMap[i]['username'],
      name: loginFormMap[i]['name'],
      email: loginFormMap[i]['email'],
      password: loginFormMap[i]['password'],
    );
  });
}

void main() async {
  runApp(const MainApp());

  database = openDatabase(
    join(await getDatabasesPath(), "LoginFormDB2.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          '''CREATE TABLE LOGINFORM (username VARCHAR PRIMARY KEY, name TEXT, email TEXT, password TEXT)''');
    },
  );

  //insert
  // LoginFormData user1 = LoginFormData(
  //     username: 'keshav123',
  //     name: 'Keshav Masvale',
  //     email: 'keshavmasvale9657@gmail.com',
  //     password: 'Pass@123');

  // //insertLoginFormData(user1);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
