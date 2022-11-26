import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
//menambahkan function
  void answerQuestions() {
    print('Answer Choosen !');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour',
      'What\'s your favourite Animal?',
    ];

    return MaterialApp(
      // home: Text('Hello'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Questions!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed:
                  answerQuestions, //() => print('Answer 2 chosen'), //anonymous function
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestions, //(){
              //.....
              // print('Answer 3 Choosen')
              //}
            ),
          ], //
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
