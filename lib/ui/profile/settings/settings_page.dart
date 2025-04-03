import 'package:auto_route/auto_route.dart';
import 'package:fake_store/ui/profile/settings/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Настройки"),
        centerTitle: true,
      ),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return ListView(
            children: [
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Общие",
                ),
              ),
              const SizedBox(height: 8),
              SwitchListTile(
                value: state == const SettingsState.dark(),
                onChanged: (val) {
                  context.read<SettingsCubit>().toggleTheme();
                },
                title: const Text("Тёмная тема"),
                secondary: const Icon(Icons.dark_mode),
              ),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text("Язык"),
                subtitle: const Text("Русский"),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text("Уведомления"),
                trailing: Switch(
                  value: true,
                  onChanged: (val) {},
                ),
              ),
              const Divider(height: 32),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Аккаунт",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Сменить пароль"),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () =>
                    AutoRouter.of(context).navigatePath('change_password'),
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text("Удалить аккаунт"),
                onTap: () {
                  // TODO: подтверждение удаления
                },
              ),
              const Divider(height: 32),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // TODO: выход из аккаунта
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text("Выйти из аккаунта"),
                  style: ElevatedButton.styleFrom(

                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
