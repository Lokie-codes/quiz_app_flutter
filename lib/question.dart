class Question {
  late String questionText;
  late bool questionAnswer;
  late String questionCategory;

  // Question({required String c, required String q, required bool a}) {
  //   questionCategory = c;
  //   questionText = q;
  //   questionAnswer = a;
  // }
  Question(
      {required this.questionCategory,
      required this.questionText,
      required this.questionAnswer});
}
