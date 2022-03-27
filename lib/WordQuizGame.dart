import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    final url = Uri.parse('https://cpsu-test-api.herokuapp.com/quizzes');
    var x = http.get(url, headers: {'id': '620710328'});
    return Scaffold();
  }
}



