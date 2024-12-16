import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import '../controller/change_password_controller.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
