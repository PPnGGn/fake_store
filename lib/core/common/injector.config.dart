// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../api/products/products_api.dart' as _i110;
import '../../ui/products/product/cubit/product_cubit.dart' as _i617;
import '../../ui/products/products/cubit/products_cubit.dart' as _i198;
import 'injection_module.dart' as _i212;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.lazySingleton<_i361.Dio>(() => apiModule.dio());
    gh.lazySingleton<_i617.ProductCubit>(() => _i617.ProductCubit());
    gh.lazySingleton<_i110.ProductsApi>(
        () => apiModule.productsApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i198.ProductsCubit>(
        () => _i198.ProductsCubit(gh<_i110.ProductsApi>()));
    return this;
  }
}

class _$ApiModule extends _i212.ApiModule {}
