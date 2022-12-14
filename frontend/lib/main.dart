// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:hack_app/pages/home_page.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<http.Response> buttonPressed() async {
    http.Response returnedResult = await http.get(
        Uri.parse('http://localhost:8000/app/hellodjango'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset-UTF-8'
        });
    print(returnedResult.body);
    return returnedResult;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
