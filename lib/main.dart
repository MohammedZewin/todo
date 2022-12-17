import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo84/layout/home_layout.dart';
import 'package:todo84/modules/settings/settings.dart';
import 'package:todo84/modules/tasks_list/tasks_list.dart';
import 'package:todo84/provider/provide.dart';
import 'package:todo84/shared/styles/myTheme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyProvider()),
      ],
      child: MaterialApp(
        initialRoute: Home_Layout.routeName,
        routes: {
          Home_Layout.routeName: (context) => Home_Layout(),
        },
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
