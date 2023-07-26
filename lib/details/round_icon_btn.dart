import 'package:flutter/material.dart';
import 'package:project_four/products/products.dart';

class RoundIconBtn extends StatelessWidget {
  const RoundIconBtn({
    super.key,
    required this.iconData,
    required this.press,
  });
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press,
        child: Icon(IconData as IconData?),
      ),
    );
  }
}

class ProductDetailArguments{
  final Product product;
  ProductDetailArguments({required this.product});
}
