import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreSign = [];

  List<Question> questions = [
    Question(q: 'Sun rises in the West and sets in the East.', a: false),
    Question(q: 'BL is the most beautiful woman ever.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Sun rises in the West and sets in the East.', a: false),
    Question(q: 'BL is the most beautiful woman ever.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Sun rises in the West and sets in the East.', a: false),
    Question(q: 'BL is the most beautiful woman ever.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

  int questionNo = 0;
  bool answer = false;
  // Question q1 = Question(q: 'Sun rises in the West and sets in the East.', a: false);
  Icon scoreCheck(bool userAnswer, bool correctAnswer) {
    if (correctAnswer == userAnswer) {
      return const Icon(
        Icons.done,
        color: Colors.green,
      );
    } else {
      return const Icon(
        Icons.close,
        color: Colors.red,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNo].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
              onPressed: () {
                bool answer = questions[questionNo].questionAnswer;
                setState(() {
                  questionNo++;
                  scoreSign.add(
                    scoreCheck(true, answer),
                  );
                });
              },
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
              onPressed: () {
                bool answer = questions[questionNo].questionAnswer;
                setState(() {
                  questionNo++;
                  scoreSign.add(
                    scoreCheck(false, answer),
                  );
                });
              },
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreSign,
        ),
      ],
    );
  }
}
