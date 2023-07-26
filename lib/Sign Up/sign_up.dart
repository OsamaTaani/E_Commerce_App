import 'package:flutter/material.dart';
import 'package:project_four/Sign%20Up/interface.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName= "/sign_up";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Interface(),
    );
  }
}
