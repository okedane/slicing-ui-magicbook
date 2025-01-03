import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';

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
            children: [
              const QTextfild(hintText: "Email"),
              const SizedBox(
                height: 15.0,
              ),
              const QTextfild(hintText: "Password"),
              const SizedBox(
                height: 15.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              QButton(label: "Password", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
