import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  Widget build(context, ProfileController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044979/nr7gt66alfhmu9vaxu2u.png",
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "Jose Spancer",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Desainer at KK UI Store",
                style: TextStyle(fontSize: 14),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Other Information"),
              ),
              //bisa mengunakan ListView
              for (var item in controller.menuItem)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item["label"]),
                  trailing: const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                  onTap: () => Get.to(item["view"]),
                )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
