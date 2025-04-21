import 'package:bloc/bloc.dart';
import 'package:fake_store/entities/dto/response/response_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';

part 'product_cubit.freezed.dart';

@LazySingleton()
class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductState.empty());

  void transferResponse(ProductsResponse product) => emit(ProductState.data(product));

}
