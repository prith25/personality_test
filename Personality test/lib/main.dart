import 'package:flutter/material.dart';

import './question.dart';
import './result.dart';

void main() => runApp(MyPersonalityApp());

class MyPersonalityApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyPersonalityAppState();
  }
}

class MyPersonalityAppState extends State<MyPersonalityApp> {
  int questionIndex = 1;
  int questionLength = 10;
  int answer = 0;
  int selectedRadio = 0;
  int E = 20;
  int A = 14;
  int C = 14;
  int N = 38;
  int O = 8;

  void answerQuestion() {
    if (questionIndex == 1) {
      E = E + selectedRadio;
    } else if (questionIndex == 6) {
      E = E - selectedRadio;
    } else if (questionIndex == 11) {
      E = E + selectedRadio;
    } else if (questionIndex == 16) {
      E = E - selectedRadio;
    } else if (questionIndex == 21) {
      E = E + selectedRadio;
    } else if (questionIndex == 26) {
      E = E - selectedRadio;
    } else if (questionIndex == 31) {
      E = E + selectedRadio;
    } else if (questionIndex == 36) {
      E = E - selectedRadio;
    } else if (questionIndex == 41) {
      E = E + selectedRadio;
    } else if (questionIndex == 46) {
      E = E - selectedRadio;
    } else if (questionIndex == 2) {
      A = A - selectedRadio;
    } else if (questionIndex == 7) {
      A = A + selectedRadio;
    } else if (questionIndex == 12) {
      A = A - selectedRadio;
    } else if (questionIndex == 17) {
      A = A + selectedRadio;
    } else if (questionIndex == 22) {
      A = A - selectedRadio;
    } else if (questionIndex == 27) {
      A = A + selectedRadio;
    } else if (questionIndex == 32) {
      A = A - selectedRadio;
    } else if (questionIndex == 37) {
      A = A + selectedRadio;
    } else if (questionIndex == 42) {
      A = A + selectedRadio;
    } else if (questionIndex == 47) {
      A = A + selectedRadio;
    } else if (questionIndex == 3) {
      C = C + selectedRadio;
    } else if (questionIndex == 8) {
      C = C - selectedRadio;
    } else if (questionIndex == 13) {
      C = C + selectedRadio;
    } else if (questionIndex == 18) {
      C = C - selectedRadio;
    } else if (questionIndex == 23) {
      C = C + selectedRadio;
    } else if (questionIndex == 28) {
      C = C - selectedRadio;
    } else if (questionIndex == 33) {
      C = C + selectedRadio;
    } else if (questionIndex == 38) {
      C = C - selectedRadio;
    } else if (questionIndex == 43) {
      C = C + selectedRadio;
    } else if (questionIndex == 48) {
      C = C + selectedRadio;
    } else if (questionIndex == 4) {
      N = N - selectedRadio;
    } else if (questionIndex == 9) {
      N = N + selectedRadio;
    } else if (questionIndex == 14) {
      N = N - selectedRadio;
    } else if (questionIndex == 19) {
      N = N + selectedRadio;
    } else if (questionIndex == 24) {
      N = N - selectedRadio;
    } else if (questionIndex == 29) {
      N = N - selectedRadio;
    } else if (questionIndex == 34) {
      N = N - selectedRadio;
    } else if (questionIndex == 39) {
      N = N - selectedRadio;
    } else if (questionIndex == 44) {
      N = N - selectedRadio;
    } else if (questionIndex == 49) {
      N = N - selectedRadio;
    } else if (questionIndex == 5) {
      O = O + selectedRadio;
    } else if (questionIndex == 10) {
      O = O - selectedRadio;
    } else if (questionIndex == 15) {
      O = O + selectedRadio;
    } else if (questionIndex == 20) {
      O = O - selectedRadio;
    } else if (questionIndex == 25) {
      O = O + selectedRadio;
    } else if (questionIndex == 30) {
      O = O - selectedRadio;
    } else if (questionIndex == 35) {
      O = O + selectedRadio;
    } else if (questionIndex == 40) {
      O = O + selectedRadio;
    } else if (questionIndex == 45) {
      O = O + selectedRadio;
    } else if (questionIndex == 50) {
      O = O + selectedRadio;
    }

    if (questionIndex == questionLength) {
      resultPage(E, A, C, N, O);
      print('YESquestionIndex');
    } else {
      setState(() {
        selectedRadio = 0;
        questionIndex = questionIndex + 1;
      });
    }
    print('Answer $selectedRadio');
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      '',
      '1. I am the life of the party.\n\n',
      '2. I feel little concern for others.\n\n',
      '3. I am always prepared.\n\n',
      '4. I get stressed out easily.\n\n',
      '5. I have a rich vocabulary.\n\n',
      '6. I don\'t talk a lot.\n\n',
      '7. I am interested in people.\n\n',
      '8. I leave my belongings around.\n\n',
      '9. I am relaxed most of the time.\n\n',
      '10. I have difficulty understanding abstract ideas.\n\n',
      '11. I feel comfortable around people.\n\n',
      '12. I insult people.\n\n',
      '13. I pay attention to details.\n\n',
      '14. I worry about things.\n\n',
      '15. I have a vivid imagination.\n\n',
      '16. I keep in the background.\n\n',
      '17. I sympathize with others\' feelings.\n\n',
      '18. I make a mess of things.\n\n',
      '19. I seldom feel blue.\n\n',
      '20. I am not interested in abstract ideas.\n\n',
      // '21. I start conversations.\n\n',
      // '22. I am not interested in other people\'s problems.\n\n',
      // '23. I get chores done right away.\n\n'
      // '24. I am easily disturbed.\n\n',
      // '25. I have excellent ideas.\n\n',
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Question(questions[questionIndex]),
              RadioListTile(
                value: 1,
                groupValue: selectedRadio,
                activeColor: Colors.red,
                title: Text(
                  'Disagree',
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("Radio $val");
                  setSelectedRadio(1);
                  answer = 1;
                },
                selected: selectedRadio == 1,
              ),
              RadioListTile(
                value: 2,
                groupValue: selectedRadio,
                activeColor: Colors.orange,
                title: Text(
                  'Slightly Disagree',
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("Radio $val");
                  setSelectedRadio(2);
                  answer = 2;
                },
                selected: selectedRadio == 2,
              ),
              RadioListTile(
                value: 3,
                groupValue: selectedRadio,
                activeColor: Color(0xFF00C853),
                title: Text(
                  'Neutral',
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("Radio $val");
                  setSelectedRadio(3);
                  answer = 3;
                },
                selected: selectedRadio == 3,
              ),
              RadioListTile(
                value: 4,
                groupValue: selectedRadio,
                activeColor: Colors.pink,
                title: Text(
                  'Slightly agree',
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("Radio $val");
                  setSelectedRadio(4);
                  answer = 4;
                },
                selected: selectedRadio == 4,
              ),
              RadioListTile(
                value: 5,
                groupValue: selectedRadio,
                activeColor: Colors.blue,
                title: Text(
                  'Agree',
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("Radio $val");
                  setSelectedRadio(5);
                  answer = 5;
                },
                selected: selectedRadio == 5,
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12.0),
                    primary: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    maximumSize: Size.infinite),
                child: Text('Submit',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
