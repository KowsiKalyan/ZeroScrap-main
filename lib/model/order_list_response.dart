// To parse this JSON data, do
//
//     final orderListModel = orderListModelFromJson(jsonString);

import 'dart:convert';

OrderListModel orderListModelFromJson(String str) =>
    OrderListModel.fromJson(json.decode(str));

String orderListModelToJson(OrderListModel data) => json.encode(data.toJson());

class OrderListModel {
  OrderListModel({
    this.status,
    this.message,
    this.orderDetails,
    this.totalPrice,
  });

  String? status;
  String? message;
  List<OrderDetail>? orderDetails;
  String? totalPrice;

  factory OrderListModel.fromJson(Map<String, dynamic> json) => OrderListModel(
        status: json["status"],
        message: json["message"],
        orderDetails: List<OrderDetail>.from(
            json["order_details"].map((x) => OrderDetail.fromJson(x))),
        totalPrice: json["total_price"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "order_details":
            List<dynamic>.from(orderDetails!.map((x) => x.toJson())),
        "total_price": totalPrice,
      };
}

class OrderDetail {
  OrderDetail({
    this.category,
    this.subcategory,
    this.material,
    this.quantity,
    this.perPrice,
    this.price,
  });

  String? category;
  String? subcategory;
  String? material;
  int? quantity;
  int? perPrice;
  int? price;

  factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
        category: json["category"],
        subcategory: json["subcategory"],
        material: json["material"],
        quantity: json["quantity"],
        perPrice: json["per_price"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "subcategory": subcategory,
        "material": material,
        "quantity": quantity,
        "per_price": perPrice,
        "price": price,
      };
}
