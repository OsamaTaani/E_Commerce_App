import 'package:flutter/material.dart';
import 'package:project_four/products/interface.dart';

class ProductsScreen extends StatelessWidget {
  static String routeName = "/products_screen";

  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Interface(),
    );
  }
}
