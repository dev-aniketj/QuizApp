import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Text(questions.elementAt(questionIndex)),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(
              child: Text('Answer 2'), onPressed: () => answerQuestion),
          RaisedButton(child: Text('Answer 3 '), onPressed: answerQuestion),
        ],
      ),
    ));
  }
}
