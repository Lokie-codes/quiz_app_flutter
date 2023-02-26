import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  void resetQuestionNumber() => _questionNumber = 0;

  int getQuestionNumber() => _questionNumber;

  int getTotalQuestions() => _questionBank.length;

  final List<Question> _questionBank = [
    Question(c: 'Animals', q: 'Sharks are mammals.', a: false),
    Question(
        c: 'Animals',
        q: 'Sea otters have a favorite rock they use to break open food.',
        a: true),
    Question(
        c: 'Animals',
        q: 'The blue whale is the biggest animal to have ever lived.',
        a: true),
    Question(
        c: 'Animals',
        q: 'The hummingbird egg is the world\'s smallest bird egg.',
        a: true),
    Question(
        c: 'Animals',
        q: 'Pigs roll in the mud because they don’t like being clean.',
        a: false),
    Question(c: 'Animals', q: 'Bats are blind.', a: false),
    Question(c: 'Animals', q: 'A dog sweats by panting its tongue.', a: false),
    Question(
        c: 'Animals',
        q: 'It takes a sloth two weeks to digest a meal.',
        a: true),
    Question(
        c: 'Animals',
        q: 'The largest living frog is the Goliath frog of West Africa.',
        a: true),
    Question(
        c: 'Animals',
        q: 'When exiting a cave, bats always go in the direction of the wind.',
        a: false),
    Question(
        c: 'Animals',
        q: 'Galapagos tortoises sleep up to 16 hours a day.',
        a: true),
    Question(c: 'Animals', q: 'An octopus has seven hearts.', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionCategory() =>
      _questionBank[_questionNumber].questionCategory;

  String getQuestionText() => _questionBank[_questionNumber].questionText;

  bool getQuestionAnswer() => _questionBank[_questionNumber].questionAnswer;

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
