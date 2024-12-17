import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import 'package:magic_book/core/theme/theme_config.dart';
import 'package:magic_book/core/widgets/buttom/button.dart';
import 'package:magic_book/core/widgets/textfield/textfild.dart';
import 'package:magic_book/state_util.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  Widget build(context, RegisterController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: mainTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
        leading: Container(),
        leadingWidth: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/icon/icon.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const QTextfild(hintText: "Full name"),
                const SizedBox(
                  height: 10.0,
                ),
                const QTextfild(hintText: "Email"),
                const SizedBox(
                  height: 10.0,
                ),
                const QTextfild(hintText: "Password"),
                const SizedBox(
                  height: 15.0,
                ),
                QButton(label: "Create an Account", onPressed: () {}),
                const SizedBox(
                  height: 10.0,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '',
                    style: const TextStyle(),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'By signing up, you agree to our \n',
                        style: TextStyle(color: hintTextColor),
                      ),
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: hintTextColor,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: 'Privacy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "I have an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
