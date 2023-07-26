import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_four/SignIn/signin.dart';
import 'package:project_four/body/content.dart';
import 'package:project_four/body/home_continue.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String?>> Data = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: Data.length,
                itemBuilder: (context, index) => HomeContent(

                  image: Data[index]["image"]!,
                  text: Data[index]["text"]!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children:  List.generate(Data.length,
                              (index) => HomeSlide(index: index),
                      ),
                    ),
                    Spacer(flex: 3,),
                    ContinueButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }





  Container HomeSlide({int? index}){
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 :6,
      decoration: BoxDecoration(
        color: currentPage == index ?  Colors.deepOrange: Color(0xFFD8D8D8
        ),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}



