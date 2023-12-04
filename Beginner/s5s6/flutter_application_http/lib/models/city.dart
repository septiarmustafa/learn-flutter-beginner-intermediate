// To parse this JSON data, do
//
//     final kota = kotaFromJson(jsonString);

import 'dart:convert';

City CityFromJson(String str) => City.fromJson(json.decode(str));

String CityToJson(City data) => json.encode(data.toJson());

class City {
  String id;
  String idProvinsi;
  String name;

  City({
    required this.id,
    required this.idProvinsi,
    required this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        idProvinsi: json["id_provinsi"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_provinsi": idProvinsi,
        "name": name,
      };

  @override
  String toString() => name;
}
