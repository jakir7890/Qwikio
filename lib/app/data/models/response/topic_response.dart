// To parse this JSON data, do
//
//     final topicResponse = topicResponseFromMap(jsonString);

import 'dart:convert';

List<TopicResponse> topicResponseFromMap(dynamic str) => List<TopicResponse>.from((str as List<dynamic>).map((x) => TopicResponse.fromMap(x)));

String topicResponseToMap(List<TopicResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class TopicResponse {
  final int? id;
  final String? name;

  TopicResponse({
    this.id,
    this.name,
  });

  factory TopicResponse.fromMap(Map<String, dynamic> json) => TopicResponse(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
  };
}
