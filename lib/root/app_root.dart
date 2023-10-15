import 'package:flutter/material.dart';
import 'package:flutter_application_31/screens/home_screen.dart';
import 'package:flutter_application_31/screens/login_screen.dart';
import 'package:flutter_application_31/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      routes: {
        "login": (context) => LoginScreen(),
        "home": (context) => HomeScreen(),
        "splash": (context) => SplashScreen(),
      },
      initialRoute: "login",
    );
  }
}
