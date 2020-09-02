import 'question.dart';

class QuizBrain {
  List<Question> questionBank = [
    Question('Eu tenho 10 anos', true),
    Question('Eu não gosto de cachorros', false),
    Question('Meu papai é muito maluco', true),
  ];

  int currentQuestion = 0;
  int correctQuestions = 0;

  void nextQuestion() {
    if (this.currentQuestion < (questionBank.length-1)) {
      this.currentQuestion++;
    }
  }

  void restart() {
    this.currentQuestion = 0;
    this.correctQuestions = 0;
    for (int i = 0; i <= (this.questionBank.length-1); i++) {
      this.questionBank[i].answered = false;
    }
  }

  bool checkAnswer(bool myanswer) {
    questionBank[currentQuestion].answered = true;
    if (questionBank[currentQuestion].questionAnswer == myanswer) {
      this.correctQuestions++;
    }
    return (questionBank[currentQuestion].questionAnswer == myanswer);
  }

  bool isAnswered() {
    return questionBank[currentQuestion].answered;
  }

  String getCurrentQuestion() {
    return questionBank[currentQuestion].questionText;
  }

  bool getCurrentAnswer() {
    return questionBank[currentQuestion].questionAnswer;
  }

}