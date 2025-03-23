import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeWrapperRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: ProductsWrapperRoute.page,
              path: 'products',
              children: [
                AutoRoute(
                  page: ProductsRoute.page,
                  initial: true,
                  path: 'start',
                ),
                AutoRoute(page: ProductCardRoute.page, path: 'product_card'),
              ],
            ),
            AutoRoute(
              page: SettingsWrapperRoute.page,
              path: 'settings',
              children: [
                AutoRoute(page: SettingsRoute.page, path: 'start'),
              ],
            ),
            AutoRoute(
              page: CartWrapperRoute.page,
              path: 'cart',
              children: [
                AutoRoute(page: CartRoute.page, path: 'start'),
              ],
            )
          ],
        ),
      ];
}
