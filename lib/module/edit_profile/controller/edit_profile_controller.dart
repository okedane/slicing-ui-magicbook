import 'package:flutter/material.dart';
import 'package:magic_book/core.dart';
import '../view/edit_profile_view.dart';

class EditProfileController extends State<EditProfileView> {
  static late EditProfileController instance;
  late EditProfileView view;

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
}
