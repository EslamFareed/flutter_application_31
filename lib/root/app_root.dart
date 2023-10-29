import 'package:flutter/material.dart';
import 'package:flutter_application_31/repos/shared_helper.dart';
import 'package:flutter_application_31/screens/home_screen.dart';

import 'package:flutter_application_31/screens/session_7/session_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedHelper.prefs.getBool("isLogin") ?? false
          ? HomeScreen()
          : Session7Screen(),
      // theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.light(useMaterial3: true),
      themeMode: ThemeMode.light,
      // scaffoldBackgroundColor: Colors.amber,
      // appBarTheme: AppBarTheme(
      //   backgroundColor: Colors.black45,
      // )),
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Colors.black,
      //   colorScheme: ColorScheme.fromSwatch(
      //     primarySwatch: Colors.amber,
      //     accentColor: Colors.white,
      //     backgroundColor: Colors.black,
      //   ),
      //   // elevatedButtonTheme: ElevatedButtonThemeData(
      //   //     style: ButtonStyle(
      //   //   backgroundColor: MaterialStatePropertyAll(Colors.amber),
      //   // )),
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Colors.amber,
      //     foregroundColor: Colors.black,
      //     titleTextStyle: TextStyle(
      //       fontSize: 10,
      //       fontWeight: FontWeight.bold,
      //       letterSpacing: 2,
      //       wordSpacing: 5,
      //     ),
      //   ),
      // ),
    );
  }
}
