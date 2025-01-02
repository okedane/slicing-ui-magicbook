import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0.0,
        title: const Text("Forgot Password"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: primaryColor,
            ),
          ),
        ],
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
