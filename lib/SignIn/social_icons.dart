import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInSocial extends StatelessWidget {
  const SignInSocial({
    Key? key,
    required this.icon, required this.press,
  }):super(key: key);
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(12),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xFFF5F6F9),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon)
      ),
    );
  }
}