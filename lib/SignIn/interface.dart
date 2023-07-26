import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_four/Sign%20Up/sign_up.dart';
import 'package:project_four/SignIn/social_icons.dart';
import 'package:project_four/Sign Up/sign_up.dart';
import 'package:project_four/body/home_continue.dart';
import 'package:project_four/products/products_screen.dart';

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text("Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("Sign in with your email and password \nor continue with social media",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 50,),
                SignInFields(),
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInSocial(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SignInSocial(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SignInSocial(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Dont have an account?",
                    style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
                      child:
                      Text(" Sign Up",
                        style: TextStyle(fontSize: 16,color: Colors.deepOrangeAccent),
                      ),
                    )

                  ],
                )

              ],
            ),
          ),
        ),
    );
  }
}



class SignInFields extends StatefulWidget {
  const SignInFields({Key? key}) : super(key: key);

  @override
  State<SignInFields> createState() => _SignFieldsState();
}

class _SignFieldsState extends State<SignInFields> {
  //final _formKey = GlobalKey<FormState>();
  bool remember = false;
  final List<String> errors = [];
  Widget build(BuildContext context) {
    return Form(
      //key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.email_outlined),

                contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 10,
              ),
            )

            ),
            SizedBox(height: 30,),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.lock_outline),
                contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 10,
                )
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Checkbox(value: remember,
                    activeColor: Colors.deepOrangeAccent,
                    onChanged: (value){
                  setState(() {
                    remember = value!;
                  });
                    }
                ),
                Text("Remember me"),
                Spacer(),
                Text(
                  "Forget Password", style: TextStyle(decoration: TextDecoration.underline),
                )
              ],
            ),
            SizedBox(height: 30,),
            ContinueButton(text: "Continue", press: () => Navigator.pushNamed(context, ProductsScreen.routeName)),



          ],

        )
    );
  }
}

