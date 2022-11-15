// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) =>
    CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
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
    this.bannerImage,
    this.category,
  });

  List<BannerImage>? bannerImage;
  List<Category>? category;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        bannerImage: List<BannerImage>.from(
            json["bannerImage"].map((x) => BannerImage.fromJson(x))),
        category: List<Category>.from(
            json["category"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bannerImage": List<dynamic>.from(bannerImage!.map((x) => x.toJson())),
        "category": List<dynamic>.from(category!.map((x) => x.toJson())),
      };
}

class BannerImage {
  BannerImage({
    required this.bannerUrl,
  });

  String bannerUrl;

  factory BannerImage.fromJson(Map<String, dynamic> json) => BannerImage(
        bannerUrl: json["bannerUrl"],
      );

  Map<String, dynamic> toJson() => {
        "bannerUrl": bannerUrl,
      };
}

class Category {
  Category({
    this.categoryId,
    this.categoryImage,
    this.categoryName,
  });

  int? categoryId;
  String? categoryImage;
  String? categoryName;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryId: json["categoryId"],
        categoryImage: json["categoryImage"],
        categoryName: json["categoryName"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "categoryImage": categoryImage,
        "categoryName": categoryName,
      };
}
