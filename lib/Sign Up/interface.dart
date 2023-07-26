import 'package:flutter/material.dart';
import 'package:project_four/SignIn/social_icons.dart';
import 'package:project_four/body/home_continue.dart';
import 'package:project_four/complete_regs/complete_regs.dart';

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text("Register Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                    //height: 1.5,
                ),
              ),
              Text("Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
              SizedBox(height: 70,),
              SignUpFields(),
              SizedBox(height: 40,),
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
            ],

          ),
        ),
      ),
    );
  }
}

class SignUpFields extends StatefulWidget {
  const SignUpFields({Key? key}) : super(key: key);

  @override
  State<SignUpFields> createState() => _SignUpFieldsState();
}

class _SignUpFieldsState extends State<SignUpFields> {
  @override
  Widget build(BuildContext context) {
    return Form(
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
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 10
                )
              ),
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 30),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Re-Enter your password",
                  labelText: "ConfirmPassword",
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
            SizedBox(height: 50),
            ContinueButton(text: "Continue", press: () {
              Navigator.pushNamed(context,CompleteScreen.routeName );
            })


          ],
        ));
  }
}

