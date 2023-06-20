import 'dart:convert';

List<Data> dataFromJson(String str) =>
    List<Data>.from(json.decode(str)['products'].map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  Data({
    required this.id,
    required this.title,
    required this.likes,
    required this.description,
    required this.imageUrl,
  });

  final int id, likes;
  final String description, title, imageUrl;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        likes: json["price"],
        imageUrl: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": likes,
        "thumbnail": imageUrl,
      };
}
