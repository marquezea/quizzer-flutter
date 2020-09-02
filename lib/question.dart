class Question {
  String questionText;
  bool questionAnswer;
  bool answered;

  Question(this.questionText, this.questionAnswer) {
    answered = false;
  }
}