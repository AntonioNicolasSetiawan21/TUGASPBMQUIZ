import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: 'Pembangunan Menara Eiffel selesai pada 31 Maret 1887',
        questionAnswer: false),
    Question(
        questionText:
            'Petir terlihat sebelum terdengar karena cahaya merambat lebih cepat daripada suara',
        questionAnswer: true),
    Question(
        questionText: 'Kota Vatikan adalah sebuah negara',
        questionAnswer: true),
    Question(
        questionText: 'Melbourne adalah ibu kota Australia',
        questionAnswer: false),
    Question(
        questionText: 'Gunung Fuji adalah gunung tertinggi di Jepang',
        questionAnswer: true),
    Question(
        questionText: 'Bola lampu adalah penemuan Thomas Edison',
        questionAnswer: false),
    Question(
        questionText: 'Google awalnya bernama BackRub', questionAnswer: true),
    Question(
        questionText: 'Coca-Cola ada di setiap negara di seluruh dunia',
        questionAnswer: false),
    Question(
        questionText:
            'Hidung Anda menghasilkan hampir satu liter lendir sehari',
        questionAnswer: true),
    Question(
        questionText: 'Seekor bekicot bisa tidur hingga 1 bulan',
        questionAnswer: false),
    Question(questionText: 'Kelapa adalah kacang', questionAnswer: false),
    Question(questionText: 'Tomat adalah buah', questionAnswer: true),
    Question(
        questionText: 'Atmosfer Merkurius terdiri dari Karbon Dioksida',
        questionAnswer: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - create isFinished method that checks the last questions.
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Menghitung jumlah pertanyaan
  int getTotalQuestions() {
    return _questionBank.length;
  }

  //TODO: Step 4 Part B - Create a reset() method that sets the questionNumber back to 0
  void reset() {
    _questionNumber = 0;
  }
}
