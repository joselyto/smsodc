// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

ContactModel contactModelFromJson(String str) => ContactModel.fromJson(json.decode(str));

String contactModelToJson(ContactModel data) => json.encode(data.toJson());

class ContactModel {
  ContactModel({
    this.id,
    this.nom,
    this.prenom,
  });

  int? id;
  String? nom;
  String? prenom;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
    id: json["id"],
    nom: json["nom"],
    prenom: json["prenom"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nom": nom,
    "prenom": prenom,
  };
}
