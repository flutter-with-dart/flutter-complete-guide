import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
//menambahkan function
  void answerQuestions() {
    setState((() {
      questionIndex = questionIndex + 1;
    }));

    print(questionIndex);
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
            Text(
              questions[questionIndex],
            ),
            //Text('Choose the questions below'),
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
