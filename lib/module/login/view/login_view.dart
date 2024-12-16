import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:magic_book/core/widgets/buttom/button.dart';
import '../controller/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welocome \nto MagicBook",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text("Write less do more"),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icon/icon.png",
                    width: 64,
                    height: 64,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const Spacer(),
              TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: const TextStyle(color: Color(0xFF969FA2)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFCDCDCD)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFFCDCDCD)), // Warna border saat fokus
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  fillColor: const Color(0xFFCDCDCD),
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Color(0xFF969FA2)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFCDCDCD)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFFCDCDCD)), // Warna border saat fokus
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  fillColor: const Color(0xFFCDCDCD),
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 13.0,
              ),
              QButton(label: "Login", onPressed: () {}),
              const Spacer(),
              QButton(
                label: "Sign Up",
                onPressed: () {},
                color: Color(0xFFCDCDCD),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
