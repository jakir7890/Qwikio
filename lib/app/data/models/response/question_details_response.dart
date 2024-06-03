// To parse this JSON data, do
//
//     final questionDetailsResponse = questionDetailsResponseFromMap(jsonString);

import 'dart:convert';

import 'clue_model.dart';

List<QuestionDetailsResponse> questionDetailsResponseFromMap(dynamic str) => List<QuestionDetailsResponse>.from((str as List<dynamic>).map((x) => QuestionDetailsResponse.fromMap(x)));

String questionDetailsResponseToMap(List<QuestionDetailsResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class QuestionDetailsResponse {
  final int? questionId;
  final String? setId;
  final String? questionPattern;
  final String? questionSection;
  final String? question;
  final String? questionAttachment;
  final String? file;
  final String? explanation;
  final int? answerId;
  final dynamic marks;
  final int? selectedClueId;
  final List<ClueModel>? clues;

  QuestionDetailsResponse({
    this.questionId,
    this.setId,
    this.questionPattern,
    this.questionSection,
    this.question,
    this.questionAttachment,
    this.file,
    this.explanation,
    this.marks,
    this.answerId,
    this.selectedClueId,
    this.clues,
  });

  QuestionDetailsResponse copyWith({
    int? questionId,
    String? setId,
    String? questionPattern,
    String? questionSection,
    String? question,
    String? questionAttachment,
    String? file,
    String? explanation,
    int? answerId,
    dynamic marks,
    int? selectedClueId,
    List<ClueModel>? clues,
  }) =>
      QuestionDetailsResponse(
        questionId: questionId ?? this.questionId,
        setId: setId ?? this.setId,
        questionPattern: questionPattern ?? this.questionPattern,
        questionSection: questionSection ?? this.questionSection,
        question: question ?? this.question,
        questionAttachment: questionAttachment ?? this.questionAttachment,
        file: file ?? this.file,
        explanation: explanation ?? this.explanation,
        marks: marks ?? this.marks,
        answerId: answerId ?? this.answerId,
        selectedClueId: selectedClueId,
        clues: clues ?? this.clues,
      );

  factory QuestionDetailsResponse.fromMap(Map<String, dynamic> json) => QuestionDetailsResponse(
    questionId: json["question_id"],
    setId: json["set_id"],
    questionPattern: json["question_pattern"],
    questionSection: json["question_section"],
    question: json["question"],
    questionAttachment: json["question_attachment"],
    file: json["file"],
    explanation: json["explanation"],
    answerId: json["answer_id"],
    marks: json["marks"],
    clues: json["clues"] == null ? [] : List<ClueModel>.from(json["clues"]!.map((x) => ClueModel.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "question_id": questionId,
    "clue_id": setId,
  };
}
