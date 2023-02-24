import 'question.dart';

class QuizBrain {
  final List<Question> _questionBank = [
    Question(q: 'Sharks are mammals.', a: false),
    Question(q: 'Sea otters have a favorite rock they use to break open food.', a: true),
    Question(q: 'The blue whale is the biggest animal to have ever lived.', a: true),
    Question(q: 'The hummingbird egg is the world\'s smallest bird egg.', a: true),
    Question(q: 'Pigs roll in the mud because they don’t like being clean.', a: false),
    Question(q: 'Bats are blind.', a: false),
    Question(q: 'A dog sweats by panting its tongue.', a: false),
    Question(q: 'It takes a sloth two weeks to digest a meal.', a: true),
    Question(q: 'The largest living frog is the Goliath frog of West Africa.', a: true),
    Question(q: 'When exiting a cave, bats always go in the direction of the wind.', a: false),
    Question(q: 'Galapagos tortoises sleep up to 16 hours a day.', a: true),
    Question(q: 'An octopus has seven hearts.', a: false),
  ];

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  bool getQuestionAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }
}