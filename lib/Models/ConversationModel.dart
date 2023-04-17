// To parse this JSON data, do
//
//     final conversationModel = conversationModelFromJson(jsonString);

import 'dart:convert';

ConversationModel conversationModelFromJson(String str) => ConversationModel.fromJson(json.decode(str));

String conversationModelToJson(ConversationModel data) => json.encode(data.toJson());

class ConversationModel {
    ConversationModel({
        this.id,
        this.objet,
    });

    int? id;
    String? objet;

    factory ConversationModel.fromJson(Map<String, dynamic> json) => ConversationModel(
        id: json["id"],
        objet: json["objet"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "objet": objet,
    };
}
