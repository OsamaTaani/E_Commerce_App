import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: 36,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: 250,
          width: 230,
        ),
      ],
    );
  }
}