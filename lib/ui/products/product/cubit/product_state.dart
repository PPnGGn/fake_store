part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.empty() = _Empty;
  const factory ProductState.data(ProductsResponse product) = _Data;
}
