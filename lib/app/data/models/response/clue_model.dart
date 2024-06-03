
class ClueModel {
  final int? clueId;
  final String? cluePattern;
  final String? clue;
  final String? clueAttachment;
  final String? file;
  final bool? answer;
  final String? explanation;

  ClueModel({
    this.clueId,
    this.cluePattern,
    this.clue,
    this.clueAttachment,
    this.file,
    this.answer,
    this.explanation,
  });

  ClueModel copyWith({
    int? clueId,
    String? cluePattern,
    String? clue,
    String? clueAttachment,
    String? file,
    bool? answer,
    int? isClueId,
    String? explanation,
  }) =>
      ClueModel(
        clueId: clueId ?? this.clueId,
        cluePattern: cluePattern ?? this.cluePattern,
        clue: clue ?? this.clue,
        clueAttachment: clueAttachment ?? this.clueAttachment,
        file: file ?? this.file,
        answer: answer ?? this.answer,
        explanation: explanation ?? this.explanation,
      );

  factory ClueModel.fromMap(Map<String, dynamic> json) => ClueModel(
    clueId: json["clue_id"],
    cluePattern: json["clue_pattern"],
    clue: json["clue"],
    clueAttachment: json["clue_attachment"],
    file: json["file"],
    answer: json["answer"],
    explanation: json["explanation"],
  );

  Map<String, dynamic> toMap() => {
    "clue_id": clueId,
    "clue_pattern": cluePattern,
    "clue": clue,
    "clue_attachment": clueAttachment,
    "answer": answer,
    "explanation": explanation,
  };
}
