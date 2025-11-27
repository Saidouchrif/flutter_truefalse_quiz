import 'package:flutter_truefalse_quiz/question.dart';

class AppBrain{
  List<Question> _questionBank = [
    Question(
      questionText:
          "Le nombre de planètes dans le système solaire est de huit planètes.",
      questionImage: "images/image-1.jpg",
      questionAnswer: true,
    ),
    Question(
      questionText: "Les chats sont des animaux carnivores.",
      questionImage: "images/image-2.jpg",
      questionAnswer: true,
    ),
    Question(
      questionText: "L’Aïn se trouve sur le continent africain.",
      questionImage: "images/image-3.jpg",
      questionAnswer: false,
    ),
    Question(
      questionText: "La Terre est plate et non sphérique.",
      questionImage: "images/image-4.jpg",
      questionAnswer: false,
    ),
    Question(
      questionText: "L’être humain a pu survivre grâce à la consommation de viande.",
      questionImage: "images/image-5.jpg",
      questionAnswer: true,
    ),
    Question(
      questionText: "Le Soleil tourne autour de la Terre et la Terre tourne autour de la Lune.",
      questionImage: "images/image-6.jpg",
      questionAnswer: false,
    ),
    Question(
      questionText: "Les animaux ne ressentent pas la peur.",
      questionImage: "images/image-7.jpg",
      questionAnswer: false,
    ),
  ];
  String getQuestionText(int index) {
    return _questionBank[index].questionText;
  }
  String getQuestionImage(int index) {
    return _questionBank[index].questionImage;
  }
  bool getQuestionAnswer(int index) {
    return _questionBank[index].questionAnswer;
  }
  int getQuestionBankLength() {
    return _questionBank.length;
  }
}