// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

MessageModel messageModelFromJson(String str) => MessageModel.fromJson(json.decode(str));

String messageModelToJson(MessageModel data) => json.encode(data.toJson());

class MessageModel {
  MessageModel({
    this.id,
    this.contactId,
    this.content,
    this.date,
    this.conversationId,
  });

  int? id;
  int? contactId;
  String? content;
  DateTime? date;
  int? conversationId;

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
    id: json["id"],
    contactId: json["contact_id"],
    content: json["content"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    conversationId: json["conversation_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "contact_id": contactId,
    "content": content,
    "date": date?.toIso8601String(),
    "conversation_id": conversationId,
  };
}
