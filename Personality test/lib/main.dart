import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyPersonalityApp());

class MyPersonalityApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyPersonalityAppState();
  }
}

class _MyPersonalityAppState extends State<MyPersonalityApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'I am the life of the party.',
      'I feel little concern for others.',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 15.0,
          backgroundColor: Colors.teal,
          title: Center(child: Text('Personality Test')),
        ),
        body: Center(
          child: Column(
            children: [
              Question(questions[_questionIndex]),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Disagree'),
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Slightly disagree'),
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Neutral'),
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Slightly agree'),
              ),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('Agree'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
