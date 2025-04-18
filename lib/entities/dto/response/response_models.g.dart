// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartsResponse _$CartsResponseFromJson(Map<String, dynamic> json) =>
    _CartsResponse(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartsResponseToJson(_CartsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'products': instance.products,
    };

_ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    _ProductsResponse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: json['price'] as num,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$ProductsResponseToJson(_ProductsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
    };
