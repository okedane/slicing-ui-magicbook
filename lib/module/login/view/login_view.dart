import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:magic_book/core/theme/theme_config.dart';
import 'package:magic_book/core/widgets/buttom/button.dart';
import 'package:magic_book/state_util.dart';
import '../controller/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome \nto MagicBook",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: mainTextColor,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "Write less do more",
                          style: TextStyle(
                            color: mainTextColor,
                          ),
                        ),
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
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: hintTextColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: backgroundTextFieldcolor),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: backgroundTextFieldcolor,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  fillColor: backgroundTextFieldcolor,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                autocorrect: false,
                obscureText: true,
                onChanged: (value) {},
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: hintTextColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundTextFieldcolor),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: backgroundTextFieldcolor,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    fillColor: backgroundTextFieldcolor,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: hintTextColor,
                    )),
              ),
              const SizedBox(height: 15.0),
              QButton(
                  label: "Login",
                  onPressed: () => Get.offAll(const MainNavigationView())),
              const SizedBox(height: 15),
              InkWell(
                onTap: () => Get.to(const ForgotPasswordView()),
                child: Text(
                  "Fogot password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ),
              const Spacer(),
              QButton(
                label: "Sign Up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterView()),
                  );
                },
                color: const Color(0xFFCDCDCD),
                textColor: mainTextColor,
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
