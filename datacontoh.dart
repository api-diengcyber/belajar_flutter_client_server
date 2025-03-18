// To parse this JSON data, do
//
//     final dataContoh = dataContohFromJson(jsonString);

import 'dart:convert';

DataContoh dataContohFromJson(String str) => DataContoh.fromJson(json.decode(str));

String dataContohToJson(DataContoh data) => json.encode(data.toJson());

class DataContoh {
    String status;
    String message;
    List<String>? data;

    DataContoh({
        required this.status,
        required this.message,
        this.data,
    });

    factory DataContoh.fromJson(Map<String, dynamic> json) => DataContoh(
        status: json["status"],
        message: json["message"],
        data: List<String>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}
