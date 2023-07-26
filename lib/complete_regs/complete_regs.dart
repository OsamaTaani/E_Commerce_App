import 'package:flutter/material.dart';
import 'package:project_four/complete_regs/Interface.dart';

class CompleteScreen extends StatelessWidget {
  static String routeName = "/complete_regs";
  const CompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Interface(),
    );
  }
}
