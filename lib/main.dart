import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_four/HomeScreen.dart';
import 'package:project_four/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //dark theme
  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //dark theme
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Image Slider",
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: "Muli",
            appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            primarySwatch: Colors.amber, // Added primarySwatch property
          ),
          darkTheme: ThemeData.dark(), // Added darkTheme property
          themeMode: currentMode,
          home: HomeScreen(),
          initialRoute: HomeScreen.routeName,
          routes: routes,
        );
      },
    );
  }
}
