// To parse this JSON data, do
//
//     final fillDetailsModel = fillDetailsModelFromJson(jsonString);

import 'dart:convert';

FillDetailsModel fillDetailsModelFromJson(String str) =>
    FillDetailsModel.fromJson(json.decode(str));

String fillDetailsModelToJson(FillDetailsModel data) =>
    json.encode(data.toJson());

class FillDetailsModel {
  FillDetailsModel({
    this.status,
    this.addressId,
    this.message,
  });

  String? status;
  int? addressId;
  String? message;

  factory FillDetailsModel.fromJson(Map<String, dynamic> json) =>
      FillDetailsModel(
        status: json["status"],
        addressId: json["address_id"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "address_id": addressId,
        "message": message,
      };
}
