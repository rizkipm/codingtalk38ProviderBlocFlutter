// To parse this JSON data, do
//
//     final resPost = resPostFromJson(jsonString);

import 'dart:convert';

List<ResPost> resPostFromJson(String str) => List<ResPost>.from(json.decode(str).map((x) => ResPost.fromJson(x)));

String resPostToJson(List<ResPost> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
