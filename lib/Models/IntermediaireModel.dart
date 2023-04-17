// To parse this JSON data, do
//
//     final intermediaireModel = intermediaireModelFromJson(jsonString);

import 'dart:convert';

IntermediaireModel intermediaireModelFromJson(String str) => IntermediaireModel.fromJson(json.decode(str));

String intermediaireModelToJson(IntermediaireModel data) => json.encode(data.toJson());

class IntermediaireModel {
  IntermediaireModel({
    this.id,
    this.idContact,
    this.idConversation,
  });

  int? id;
  int? idContact;
  int? idConversation;

  factory IntermediaireModel.fromJson(Map<String, dynamic> json) => IntermediaireModel(
    id: json["id"],
    idContact: json["id_contact"],
    idConversation: json["id_conversation"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "id_contact": idContact,
    "id_conversation": idConversation,
  };
}
