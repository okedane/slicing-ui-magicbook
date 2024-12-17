import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:magic_book/core/widgets/buttom/button.dart';
import 'package:magic_book/core/widgets/textfield/textfild.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Forgot Password"),
        backgroundColor: Colors.white,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const QTextfild(hintText: "Password"),
              const SizedBox(
                height: 10.0,
              ),
              QButton(
                  label: "Forgot Password",
                  onPressed: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
