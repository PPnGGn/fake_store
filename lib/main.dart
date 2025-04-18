import 'package:fake_store/repositories/settings/settings_repository.dart';
import 'package:fake_store/ui/profile/settings/cubit/settings_cubit.dart';
import 'package:fake_store/utils/extensions%20/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferencesWithCache prefs = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(
        // When an allowlist is included, any keys that aren't included cannot be used.
        //allowList: <String>{'repeat', 'action'},
        ),
  );

  runApp(MyApp(
    preferences: prefs,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.preferences});

  final SharedPreferencesWithCache preferences;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final settingsRepository = SettingsRepository(
      preferences: widget.preferences,
    );
    return BlocProvider(
      create: (context) => SettingsCubit(settingsRepository: settingsRepository),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state == const SettingsState.dark() ? ThemeMode.dark : ThemeMode.light,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
