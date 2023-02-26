import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  void resetQuestionNumber() => _questionNumber = 0;

  int getQuestionNumber() => _questionNumber;

  int getTotalQuestions() => _questionBank.length;

  final List<Question> _questionBank = [
    Question(questionCategory: 'Animals', questionText: 'Sharks are mammals.', questionAnswer: false),
    Question(
        questionCategory: 'Animals',
        questionText: 'Sea otters have a favorite rock they use to break open food.',
        questionAnswer: true),
    Question(
        questionCategory: 'Animals',
        questionText: 'The blue whale is the biggest animal to have ever lived.',
        questionAnswer: true),
    Question(
        questionCategory: 'Animals',
        questionText: 'The hummingbird egg is the world\'s smallest bird egg.',
        questionAnswer: true),
    Question(
        questionCategory: 'Animals',
        questionText: 'Pigs roll in the mud because they don’t like being clean.',
        questionAnswer: false),
    Question(questionCategory: 'Animals', questionText: 'Bats are blind.', questionAnswer: false),
    Question(questionCategory: 'Animals', questionText: 'A dog sweats by panting its tongue.', questionAnswer: false),
    Question(
        questionCategory: 'Animals',
        questionText: 'It takes a sloth two weeks to digest a meal.',
        questionAnswer: true),
    Question(
        questionCategory: 'Animals',
        questionText: 'The largest living frog is the Goliath frog of West Africa.',
        questionAnswer: true),
    Question(
        questionCategory: 'Animals',
        questionText: 'When exiting a cave, bats always go in the direction of the wind.',
        questionAnswer: false),
    Question(
        questionCategory: 'Animals',
        questionText: 'Galapagos tortoises sleep up to 16 hours a day.',
        questionAnswer: true),
    Question(questionCategory: 'Animals', questionText: 'An octopus has seven hearts.', questionAnswer: false),
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
