import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // В реальном проекте эти данные ты получишь через BLoC или Provider
    const user = {
      "username": "johnd",
      "email": "john@gmail.com",
      "name": {"firstname": "John", "lastname": "Doe"},
      "address": {
        "city": "kilcoole",
        "street": "new road",
        "number": 7682,
        "zipcode": "12926-3874",
      },
      "phone": "1-570-236-7033",
    } as Map<String, dynamic>;

    final fullName = "${user["name"]?["firstname"]} ${user["name"]?["lastname"]}";
    final address =
        "${user["address"]?["street"]}, ${user["address"]?["city"]} ${user["address"]?["zipcode"]}";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Профиль"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.network(
                'https://i.pravatar.cc/150?img=31',
                fit: BoxFit.contain, // 👈 чтобы всё влезло
                width: 100,
                height: 100,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              fullName,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              user["email"]!,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Имя пользователя"),
            subtitle: Text(user["username"]!),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Телефон"),
            subtitle: Text(user["phone"]!),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text("Адрес"),
            subtitle: Text(address),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () => AutoRouter.of(context).navigatePath('settings'),
            icon: const Icon(Icons.settings),
            label: const Text("Настройки"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}