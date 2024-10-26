// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

@immutable
class CatalogProduct {
  final String productName;
  final String productImage;
  final String productDescription;
  final String playStoreUrl;
  final String? appStoreUrl;
  const CatalogProduct({
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.playStoreUrl,
    this.appStoreUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': productName,
      'productImage': productImage,
      'productDescription': productDescription,
      'playStoreUrl': playStoreUrl,
      'appStoreUrl': appStoreUrl,
    };
  }

  factory CatalogProduct.fromMap(Map<String, dynamic> map) {
    return CatalogProduct(
      productName: map['productName'] as String,
      productImage: map['productImage'] as String,
      productDescription: map['productDescription'] as String,
      playStoreUrl: map['playStoreUrl'] as String,
      appStoreUrl:
          map['appStoreUrl'] != null ? map['appStoreUrl'] as String : null,
    );
  }
}
