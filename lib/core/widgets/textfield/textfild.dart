import 'package:flutter/material.dart';
import 'package:magic_book/core/theme/theme_config.dart';

class QTextfild extends StatelessWidget {
  final String hintText;
  const QTextfild({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        autocorrect: false,
        decoration: InputDecoration(
          hintText: hintText,
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
    );
  }
}
