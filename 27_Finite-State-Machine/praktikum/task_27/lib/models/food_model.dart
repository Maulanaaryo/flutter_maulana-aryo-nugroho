import 'dart:convert';

List<Foods> foodsFromJson(String str) => List<Foods>.from(json.decode(str).map((x) => Foods.fromJson(x)));

String foodsToJson(List<Foods> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Foods {
    Foods({
        required this.id,
        required this.name,
    });

    int id;
    String name;

    factory Foods.fromJson(Map<String, dynamic> json) => Foods(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}