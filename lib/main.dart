import 'package:flutter/material.dart';

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
              Image.asset('images/image-1.jpg'),
              SizedBox(height: 20.0),
              Text(
                'Le nombre de planètes dans le système solaire est de huit',
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
                print("true");
                setState(() {
                  like++;
                });
                print(like);
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
                print("False");
                setState(() {
                  dislike++;
                });
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
