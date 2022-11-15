// To parse this JSON data, do
//
//     final confirmDetailsModel = confirmDetailsModelFromJson(jsonString);

import 'dart:convert';

ConfirmDetailsModel confirmDetailsModelFromJson(String str) =>
    ConfirmDetailsModel.fromJson(json.decode(str));

String confirmDetailsModelToJson(ConfirmDetailsModel data) =>
    json.encode(data.toJson());

class ConfirmDetailsModel {
  ConfirmDetailsModel({
    this.status,
    this.message,
    this.orderDetails,
    this.userDetails,
    this.totalPrice,
  });

  String? status;
  String? message;
  List<OrderDetail>? orderDetails;
  UserDetails? userDetails;
  String? totalPrice;

  factory ConfirmDetailsModel.fromJson(Map<String, dynamic> json) =>
      ConfirmDetailsModel(
        status: json["status"],
        message: json["message"],
        orderDetails: List<OrderDetail>.from(
            json["order_details"].map((x) => OrderDetail.fromJson(x))),
        userDetails: UserDetails.fromJson(json["user_details"]),
        totalPrice: json["total_price"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "order_details":
            List<dynamic>.from(orderDetails!.map((x) => x.toJson())),
        "user_details": userDetails!.toJson(),
        "total_price": totalPrice,
      };
}

class OrderDetail {
  OrderDetail({
    this.category,
    this.subcategory,
    this.material,
    this.materialType,
    this.quantity,
    this.perPrice,
    this.price,
  });

  String? category;
  String? subcategory;
  String? material;
  String? materialType;
  int? quantity;
  int? perPrice;
  int? price;

  factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
        category: json["category"],
        subcategory: json["subcategory"],
        material: json["material"],
        materialType: json["material_type"],
        quantity: json["quantity"],
        perPrice: json["per_price"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "subcategory": subcategory,
        "material": material,
        "material_type": materialType,
        "quantity": quantity,
        "per_price": perPrice,
        "price": price,
      };
}

class UserDetails {
  UserDetails({
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

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
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
