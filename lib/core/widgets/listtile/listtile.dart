import 'package:flutter/material.dart';

class listTileProfile extends StatelessWidget {
  final String title;
  final Function onPressed;
  const listTileProfile({
    required this.title,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title),
      trailing: const Icon(
        Icons.chevron_right,
      ),
      onTap: () => onPressed,
    );
  }
}
