import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
