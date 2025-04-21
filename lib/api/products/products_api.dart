import 'package:dio/dio.dart';
import 'package:fake_store/entities/dto/response/response_models.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'products_api.g.dart';


@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class ProductsApi {
  factory ProductsApi(Dio dio, {String? baseUrl}) = _ProductsApi;

  @GET('/products')
  Future<List<ProductsResponse>> getAllProducts();

  @GET('/products/{id}')
  Future<List<ProductsResponse>> getProduct({
    @Path() required int id,
  });
}
