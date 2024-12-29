import 'package:flutter/material.dart';

class checkoutDataUsersItem extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String? subtitle2;
  const checkoutDataUsersItem({
    required this.title,
    required this.subtitle1,
    this.subtitle2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle1,
          ),
          if (subtitle2 != null) Text(subtitle2!),
        ],
      ),
      trailing: Icon(Icons.chevron_right),
    );
  }
}
