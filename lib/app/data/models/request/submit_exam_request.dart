
import 'dart:convert';

SubmitExamRequest submitExamRequestFromMap(String str) => SubmitExamRequest.fromMap(json.decode(str));

String submitExamRequestToMap(SubmitExamRequest data) => json.encode(data.toMap());

class SubmitExamRequest {
  final int? questionSetId;
  final String? totalMarks;
  final String? obtainMarks;
  final String? totalQuestion;
  final String? correctAnswer;
  final List<Answer>? answers;

  SubmitExamRequest({
    this.questionSetId,
    this.totalMarks,
    this.obtainMarks,
    this.totalQuestion,
    this.correctAnswer,
    this.answers,
  });

  factory SubmitExamRequest.fromMap(Map<String, dynamic> json) => SubmitExamRequest(
    questionSetId: json["question_set_id"],
    totalMarks: json["total_marks"],
    obtainMarks: json["obtain_marks"],
    totalQuestion: json["total_question"],
    correctAnswer: json["correct_answer"],
    answers: json["answers"] == null ? [] : List<Answer>.from(json["answers"]!.map((x) => Answer.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "question_set_id": questionSetId,
    "total_marks": totalMarks,
    "obtain_marks": obtainMarks,
    "total_question": totalQuestion,
    "correct_answer": correctAnswer,
    "answers": answers == null ? [] : List<dynamic>.from(answers!.map((x) => x.toMap())),
  };
}

class Answer {
  final int? questionId;
  final int? clueId;

  Answer({
    this.questionId,
    this.clueId,
  });

  factory Answer.fromMap(Map<String, dynamic> json) => Answer(
    questionId: json["question_id"],
    clueId: json["clue_id"],
  );

  Map<String, dynamic> toMap() => {
    "question_id": questionId,
    "clue_id": clueId,
  };
}
