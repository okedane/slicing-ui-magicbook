import 'package:flutter/material.dart';
import 'package:magic_book/core/theme/theme_config.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color? color;
  final Color? textColor;
  const QButton({
    required this.label,
    required this.onPressed,
    this.color,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor ?? secondaryColor,
          ),
        ),
      ),
    );
  }
}
