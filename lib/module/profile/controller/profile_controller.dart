import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';

class ProfileController extends State<ProfileView> {
  static late ProfileController instance;
  late ProfileView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuItem = [
    {
      "label": "Edit Profile",
      "view": const EditProfileView(),
    },
    {
      "label": "Change Password",
      "view": const ChangePasswordView(),
    },
    {
      "label": "Setting",
      "view": const EditProfileView(),
    },
    {
      "label": "Help",
      "view": const EditProfileView(),
    },
    {
      "label": "FAQ",
      "view": const EditProfileView(),
    },
    {
      "label": "Privacy Policy",
      "view": const EditProfileView(),
    },
    {
      "label": "TOS",
      "view": const EditProfileView(),
    },
    {
      "label": "logout",
      "view": () {},
    }
  ];
}
