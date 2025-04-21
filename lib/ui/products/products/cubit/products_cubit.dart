import 'package:auto_route/auto_route.dart';
import 'package:fake_store/api/products/products_api.dart';
import 'package:fake_store/entities/dto/response/response_models.dart';
import 'package:fake_store/ui/products/product/cubit/product_cubit.dart';
import 'package:fake_store/ui/products/products/cubit/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

//part  'products_state.dart';

@LazySingleton()
class ProductsCubit extends Cubit<ProductsState> {
  final ProductsApi api;

  ProductsCubit(this.api) : super(const ProductsState.initial());

  Future<void> fetchProducts() async {
    emit(const ProductsState.loading());
    try {
      final products = await api.getAllProducts();
      emit(ProductsState.success(products));
    } catch (e) {
      emit(ProductsState.failure(e.toString()));
    }
  }

  void onTap(ProductsResponse product, BuildContext context) {
    GetIt.instance.get<ProductCubit>().transferResponse(product);
    AutoRouter.of(context).navigatePath('product_card');
  }
}
