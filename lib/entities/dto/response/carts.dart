part of 'response_models.dart';

@freezed
abstract class CartsResponse with _$CartsResponse {
  const factory CartsResponse({
    required int id,
   required int userId,
    required List<ProductsResponse> products,
  }) = _CartsResponse;

  factory CartsResponse.fromJson(Map<String, dynamic> json) => _$CartsResponseFromJson(json);
}
