import 'package:dio/dio.dart';
import 'package:fake_store/api/products/products_api.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Dio dio() => Dio(); // Можно сконфигурировать при желании

  @lazySingleton
  ProductsApi productsApi(Dio dio) => ProductsApi(dio);
}