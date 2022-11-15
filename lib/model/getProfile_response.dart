// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.addressId,
    this.userName,
    this.companyName,
    this.emailId,
    this.mobileNumber,
    this.gstNumber,
    this.address,
    this.street,
    this.state,
    this.city,
    this.pincode,
    this.createdAt,
  });

  int? addressId;
  String? userName;
  String? companyName;
  String? emailId;
  String? mobileNumber;
  String? gstNumber;
  String? address;
  String? street;
  String? state;
  String? city;
  String? pincode;
  DateTime? createdAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        addressId: json["address_id"],
        userName: json["userName"],
        companyName: json["companyName"],
        emailId: json["email_id"],
        mobileNumber: json["mobileNumber"],
        gstNumber: json["gstNumber"],
        address: json["address"],
        street: json["street"],
        state: json["state"],
        city: json["city"],
        pincode: json["pincode"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "address_id": addressId,
        "userName": userName,
        "companyName": companyName,
        "email_id": emailId,
        "mobileNumber": mobileNumber,
        "gstNumber": gstNumber,
        "address": address,
        "street": street,
        "state": state,
        "city": city,
        "pincode": pincode,
        "created_at": createdAt!.toIso8601String(),
      };
}
