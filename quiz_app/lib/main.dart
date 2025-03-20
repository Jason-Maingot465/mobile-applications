import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  var questions = ["Dolphins are mammals", "Elephants are the biggest animals", "Melbourne is the Capital of Australia", "Cleopatra was of Egyptian descent"];
  var answers = [0, 0, 1, 1];

  String result = "";
  Color resultColor = Colors.blue;

  int score = 0;

  int groupValue = 2;
  
  void CheckAnswer(int answer) {
    groupValue = answer;
    if (answers[currentQuestion] == answer) {
      print("Correct");
      score++;
      result = "Correct";
      resultColor = Colors.green;
    }
    else {
      print("Incorrect");
      result = "Incorrect";
      resultColor = Colors.red;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Quiz"),
        centerTitle: true
      ),
      body: Padding(
        padding: EdgeInsets.all(36.0),
        child: Column(
          children: <Widget>[
            Text(questions[currentQuestion]),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Radio(
                  activeColor: Colors.black,
                  value: 0, 
                  groupValue: groupValue, 
                  onChanged: (e) => CheckAnswer(e!),
                ),
                Text("True"),
                SizedBox(height: 5.0),
                Radio(
                  activeColor: Colors.black,
                  value: 1, 
                  groupValue: groupValue, 
                  onChanged:  (e) => CheckAnswer(e!),
                ),
                Text("False")
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 16.0),
            FilledButton(
              child: Text("Next", style: TextStyle(color: Colors.white),),
              onPressed: () {
                setState(() {
                  if (currentQuestion < questions.length - 1){
                    groupValue = 2;
                    result = "";
                    currentQuestion++;
                  }
                });
              },
              style: FilledButton.styleFrom(backgroundColor: Colors.black),
            ),
            SizedBox(height: 16.0),
            Text(result, style: TextStyle(backgroundColor: resultColor, color: Colors.white),),
            SizedBox(height: 16.0),
            Text("Score: $score", style: TextStyle(color: Colors.white, fontSize: 32.0),) 
          ],
        ),
      ),
    );
  }
}
