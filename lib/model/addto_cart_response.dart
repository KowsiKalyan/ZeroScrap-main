// To parse this JSON data, do
//
//     final addToCartModel = addToCartModelFromJson(jsonString);

import 'dart:convert';

AddToCartModel addToCartModelFromJson(String str) =>
    AddToCartModel.fromJson(json.decode(str));

String addToCartModelToJson(AddToCartModel data) => json.encode(data.toJson());

class AddToCartModel {
  AddToCartModel({
    this.status,
    this.orderId,
    this.totalPrice,
    this.message,
  });

  String? status;
  int? orderId;
  int? totalPrice;
  String? message;

  factory AddToCartModel.fromJson(Map<String, dynamic> json) => AddToCartModel(
        status: json["status"],
        orderId: json["order_id"],
        totalPrice: json["total_price"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "order_id": orderId,
        "total_price": totalPrice,
        "message": message,
      };
}
