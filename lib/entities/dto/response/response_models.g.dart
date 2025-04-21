// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartsResponseImpl _$$CartsResponseImplFromJson(Map<String, dynamic> json) =>
    _$CartsResponseImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartsResponseImplToJson(_$CartsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'products': instance.products,
    };

_$ProductsResponseImpl _$$ProductsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductsResponseImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: json['price'] as num,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ProductsResponseImplToJson(
        _$ProductsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
    };
