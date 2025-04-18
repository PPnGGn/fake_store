import 'package:dio/dio.dart';
import 'package:fake_store/entities/dto/response/response_models.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'cart_api.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class CartsApi {
  factory CartsApi(Dio dio, {String? baseUrl}) = _CartsApi;

  @GET('/carts')
  Future<List<CartsResponse>> getAllCarts();

  @GET('/carts/{id}')
  Future<List<CartsResponse>> getSingleCart({
    @Path() required int id,
  });
}
