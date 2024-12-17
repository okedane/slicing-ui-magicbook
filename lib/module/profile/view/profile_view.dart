import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import '../controller/profile_controller.dart';

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ListTile(
                title: const Text("change Password"),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
                onTap: () => Get.to(ChangePasswordView()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
