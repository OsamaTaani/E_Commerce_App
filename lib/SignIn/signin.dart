import 'package:flutter/material.dart';
import 'package:project_four/SignIn/interface.dart';
class SignInScreen extends StatelessWidget {
  static String routName = "/SigIn";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Interface(),
    );
  }
}
