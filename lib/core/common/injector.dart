import 'package:fake_store/core/common/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: 'initGetIt',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
   getIt.initGetIt();
  await getIt.allReady();

}