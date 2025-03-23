import 'package:auto_route/auto_route.dart';
import 'package:fake_store/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';
@RoutePage()
class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({super.key});


  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: const [
        ProductsRoute(),
        CartRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context,child,animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        // alternatively, you could use a global key
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.black,
            backgroundColor: Colors.green,
            unselectedItemColor: Colors.black26,
            currentIndex: tabsRouter.activeIndex,
          type: BottomNavigationBarType.fixed,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(label: 'Products', icon: Icon(Icons.store)),
              BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.shopping_cart)),
              BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings)),
            ],
          ),
        );
      },
    );
  }
}