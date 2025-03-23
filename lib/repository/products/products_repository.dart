import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'models/products.dart';

class ProductsRepository {
  Future<List<Products>> getAllProducts() async {
    final response = await Dio().get('https://fakestoreapi.com/products');
    final data = response.data as List<dynamic>;
    final dataProductsList = data
        .map(
          (e) => Products(
            id: e['id'],
            title: e['title'],
            price: (e['price'] as num).toDouble(),
            category: e['category'],
            description: e['description'],
            image: e['image'],
          ),
        )
        .toList();
    if (kDebugMode) {
      print(dataProductsList);
    }
    return dataProductsList;
  }
}
