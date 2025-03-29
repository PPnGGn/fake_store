import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: '/', initial: true),
        AutoRoute(
          page: HomeWrapperRoute.page,
          path: '/home',
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
              page: CartWrapperRoute.page,
              path: 'cart',
              children: [
                AutoRoute(page: CartRoute.page, path: 'start'),
              ],
            ),
            AutoRoute(
              page: ProfileWrapperRoute.page,
              path: 'profile',
              children: [
                AutoRoute(page: ProfileRoute.page, path: 'start'),
                AutoRoute(page: SettingsRoute.page, path: 'settings'),
                AutoRoute(page: EditProfileRoute.page, path: 'edit_profile'),
                AutoRoute(page: ChangePasswordRoute.page, path: 'change_password'),
              ],
            ),
          ],
        ),
      ];
}
