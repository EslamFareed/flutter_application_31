import 'package:flutter/material.dart';
import 'package:flutter_application_31/screens/home_screen.dart';
import 'package:flutter_application_31/screens/login_screen.dart';
import 'package:flutter_application_31/screens/posts_screen.dart';
import 'package:flutter_application_31/screens/sign_in_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int index = 0;

  List<Widget> screens = [
    HomeScreen(),
    PostsScreen(),
    LoginScreen(),
    SignInScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   bottom:
          // ),
          body: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                color: Colors.black,
                child: const TabBar(
                  tabs: [
                    Tab(
                      text: "Home",
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      text: "Posts",
                      icon: Icon(Icons.dashboard),
                    ),
                    Tab(
                      text: "Login",
                      icon: Icon(Icons.login),
                    ),
                    Tab(
                      text: "Sign in",
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: screens),
              ),
            ],
          ),
          // body: screens[index],
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: index,
          //   onTap: (value) {
          //     setState(() {
          //       index = value;
          //     });
          //   },
          //   type: BottomNavigationBarType.fixed,
          //   showUnselectedLabels: false,
          //   fixedColor: Colors.amber,
          //   // iconSize: 16,
          //   // unselectedFontSize: ,
          //   items: const [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home_outlined),
          //       label: "Home",
          //       activeIcon: Icon(Icons.home),
          //     ),
          //     BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Posts"),
          //     BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Login"),
          //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Sign in"),
          //   ],
          // ),
        ),
      ),
    );
  }
}
