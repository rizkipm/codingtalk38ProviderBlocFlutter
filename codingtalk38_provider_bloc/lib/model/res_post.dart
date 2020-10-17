// To parse this JSON data, do
//
//     final resPost = resPostFromJson(jsonString);

import 'dart:convert';

class ResPost {
  ResPost({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory ResPost.fromRawJson(String str) => ResPost.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResPost.fromJson(Map<String, dynamic> json) => ResPost(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
