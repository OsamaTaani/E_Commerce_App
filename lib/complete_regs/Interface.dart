import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_four/body/home_continue.dart';

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Complete Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              //fontWeight: FontWeight.bold,
            ),
            ),
            Text("Complete your details or continue \nwith social media",
            style: TextStyle(
              color: Colors.grey,
            ),
              textAlign: TextAlign.center,

            ),
            SizedBox(height: 40,),
            TextFormField(

              decoration: InputDecoration(
                hintText: "Enter your first name",
                labelText: "First Name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.account_circle_outlined),

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
            TextFormField(

              decoration: InputDecoration(
                  hintText: "Enter your last name",
                  labelText: "Last Name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.account_circle_outlined),

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
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  labelText: "Phone Number",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.phone_android_outlined),

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
            TextFormField(

              decoration: InputDecoration(
                  hintText: "Enter your phone address",
                  labelText: "Address",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.location_on_outlined),

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
            ContinueButton(text: "Continue", press: () {}),
            SizedBox(height: 20,),
            Text("By continuing your confirm you \nagree with our Term and Condition",
            style: TextStyle(
              color: Colors.grey,
            ),
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}
