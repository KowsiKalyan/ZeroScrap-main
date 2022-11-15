// To parse this JSON data, do
//
//     final orderPlacedModel = orderPlacedModelFromJson(jsonString);

import 'dart:convert';

OrderPlacedModel orderPlacedModelFromJson(String str) =>
    OrderPlacedModel.fromJson(json.decode(str));

String orderPlacedModelToJson(OrderPlacedModel data) =>
    json.encode(data.toJson());

class OrderPlacedModel {
  OrderPlacedModel({
    this.status,
    this.message,
  });

  String? status;
  String? message;

  factory OrderPlacedModel.fromJson(Map<String, dynamic> json) =>
      OrderPlacedModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
