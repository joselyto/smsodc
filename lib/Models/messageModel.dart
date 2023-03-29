// To parse this JSON data, do
//
//     final messageModele = messageModeleFromJson(jsonString);

import 'dart:convert';

MessageModele messageModeleFromJson(String str) => MessageModele.fromJson(json.decode(str));

String messageModeleToJson(MessageModele data) => json.encode(data.toJson());

class MessageModele {
    MessageModele({
        this.id,
        this.prenom,
        this.nom,
        this.messages,
        this.date,
        this.image,
    });

    int? id;
    String? prenom;
    String? nom;
    String? messages;
    String? date;
    String? image;

    factory MessageModele.fromJson(Map json) => MessageModele(
        id: json["id"],
        prenom: json["prenom"],
        nom: json["nom"],
        messages: json["messages"],
        date: json["date"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "prenom": prenom,
        "nom": nom,
        "messages": messages,
        "date": date,
        "image": image,
    };
}
