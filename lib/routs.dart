




import 'package:flutter/widgets.dart';
import 'package:project_four/HomeScreen.dart';
import 'package:project_four/Sign%20Up/sign_up.dart';
import 'package:project_four/SignIn/signin.dart';
import 'package:project_four/complete_regs/complete_regs.dart';
import 'package:project_four/details/details_screen.dart';
import 'package:project_four/products/products_screen.dart';
import 'package:project_four/profile/profile_screen.dart';

final Map<String,WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SignInScreen.routName:(context) => SignInScreen(),
  SignUpScreen.routeName:(context) =>SignUpScreen(),
  CompleteScreen.routeName:(context) => CompleteScreen(),
  ProductsScreen.routeName:(context) => ProductsScreen(),
  DetailsScreen.routeName:(context) => DetailsScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen(),



};