@@@view/hyper_example_view.dart
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HyperExampleView extends StatefulWidget {
  const HyperExampleView({super.key});

  Widget build(context, HyperExampleController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hyper Example"),
        actions: const [],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  @override
  State<HyperExampleView> createState() => HyperExampleController();
}
---
@@@controller/hyper_example_controller.dart
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HyperExampleController extends State<HyperExampleView> {
  static late HyperExampleController instance;
  late HyperExampleView view;

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
---
@@@state/hyper_example_state.dart
//STATE EXAMPLE
---
@@@widget/_
---