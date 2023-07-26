import 'package:flutter/material.dart';
class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.deepOrangeAccent,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
