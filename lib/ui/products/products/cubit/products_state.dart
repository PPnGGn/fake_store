import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fake_store/entities/dto/response/response_models.dart';

part 'products_state.freezed.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.success(List<ProductsResponse> products) = _Success;
  const factory ProductsState.failure(String error) = _Failure;
}