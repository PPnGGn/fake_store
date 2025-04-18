part of 'response_models.dart';

@freezed
abstract class ProductsResponse with _$ProductsResponse {
  const factory ProductsResponse({
    required int id,
    required String title,
    required num price,
    required String description,
    required String category,
    required String image,
  }) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) => _$ProductsResponseFromJson(json);
}
