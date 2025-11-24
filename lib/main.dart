import 'package:flutter/material.dart';
import 'package:flutter_truefalse_quiz/question.dart';
import 'Appbrain.dart';

 AppBrain appBrain = AppBrain();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Test App')),
        body: Padding(padding: const EdgeInsets.all(20.0), child: ExamPage()),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int like = 0;
  int dislike = 0;
  void checkanswer(bool userPickedAnswer) {
    bool correctAnswer = appBrain.questionBank[questionIndex].questionAnswer;
    if (userPickedAnswer == correctAnswer) {
      setState(() {
        like++;
        questionIndex = (questionIndex + 1) % appBrain.questionBank.length;
      });
    } else {
      setState(() {
        dislike++;
        questionIndex = (questionIndex + 1) % appBrain.questionBank.length;
      });
    }
  }

  
  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(Icons.thumb_up, color: Colors.green, size: 30.0),
                ),
                Text(
                  '$like',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: 10.0),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(Icons.thumb_down, color: Colors.red, size: 30.0),
                ),
                Text(
                  '$dislike',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(appBrain.questionBank[questionIndex].questionImage),
              SizedBox(height: 20.0),
              Text(
                appBrain.questionBank[questionIndex].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              onPressed: () {
                checkanswer(true);
              },
              child: Text("Vrai", style: TextStyle(fontSize: 20.0)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              onPressed: () {
                checkanswer(false);
              },
              child: Text("Faux", style: TextStyle(fontSize: 20.0)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
