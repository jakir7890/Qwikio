import 'dart:convert';

ExamSubmitResponse examSubmitResponseFromMap(dynamic str) => ExamSubmitResponse.fromMap(json.decode(str));

class ExamSubmitResponse {
  final String? totalQuestions;
  final String? givenCorrectAnswer;

  ExamSubmitResponse({
    this.totalQuestions,
    this.givenCorrectAnswer,
  });

  factory ExamSubmitResponse.fromMap(Map<String, dynamic> json) => ExamSubmitResponse(
    totalQuestions: json["total_questions"],
    givenCorrectAnswer: json["given_correct_answer"],
  );
}
