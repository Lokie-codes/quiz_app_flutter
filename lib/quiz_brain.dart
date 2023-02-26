import 'package:flutter/material.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(q: 'Sharks are mammals.', a: false),
    Question(
        q: 'Sea otters have a favorite rock they use to break open food.',
        a: true),
    Question(
        q: 'The blue whale is the biggest animal to have ever lived.', a: true),
    Question(
        q: 'The hummingbird egg is the world\'s smallest bird egg.', a: true),
    Question(
        q: 'Pigs roll in the mud because they don’t like being clean.',
        a: false),
    Question(q: 'Bats are blind.', a: false),
    Question(q: 'A dog sweats by panting its tongue.', a: false),
    Question(q: 'It takes a sloth two weeks to digest a meal.', a: true),
    Question(
        q: 'The largest living frog is the Goliath frog of West Africa.',
        a: true),
    Question(
        q: 'When exiting a cave, bats always go in the direction of the wind.',
        a: false),
    Question(q: 'Galapagos tortoises sleep up to 16 hours a day.', a: true),
    Question(q: 'An octopus has seven hearts.', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  Icon scoreCheck(bool userAnswer) {
    bool correctAnswer = getQuestionAnswer();

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
}
