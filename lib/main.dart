import 'package:flutter/material.dart';
import 'package:todo84/layout/home_layout.dart';
import 'package:todo84/shared/styles/myTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home_Layout.routeName,
      routes: {
        Home_Layout.routeName: (context) => Home_Layout(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
