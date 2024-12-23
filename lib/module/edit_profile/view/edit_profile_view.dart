import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import '../controller/edit_profile_controller.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  Widget build(context, EditProfileController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044979/nr7gt66alfhmu9vaxu2u.png",
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EditProfileView> createState() => EditProfileController();
}
