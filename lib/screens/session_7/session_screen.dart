import 'package:flutter/material.dart';
import 'package:flutter_application_31/repos/shared_helper.dart';
import 'package:flutter_application_31/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session7Screen extends StatelessWidget {
  Session7Screen({super.key});

  //Tranisiton Animation
  Route goTo(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //! Rotate Transition
        //! Scale Transition
        //! Size Transition
        //! Mix Between Slide and fade transition
        return FadeTransition(
          opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
          child: SlideTransition(
            position: animation
                .drive(Tween(begin: const Offset(1, 0), end: Offset.zero)),
            child: child,
          ),
        );
        //! Fade Transition
        // return FadeTransition(
        //   opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
        //   child: child,
        // );

        //! Slide Transition (from left to right)
        // const begin = Offset(-1, 0);
        // const end = Offset.zero;

        // final tween = Tween(begin: begin, end: end);

        // return SlideTransition(
        //   position: animation.drive(tween),
        //   child: child,
        // );
      },
    );
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Session 7"),
        leading: Icon(Icons.abc),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                prefixIcon: const Icon(Icons.security),
              ),
            ),
            const SizedBox(height: 20),

            MaterialButton(
              onPressed: () {
                if (emailController.text == "eslam@gmail.com" &&
                    passwordController.text == "123456") {
                  SharedHelper.prefs.setBool("isLogin", true).then((value) {
                    Navigator.pushReplacement(context, goTo(HomeScreen()));
                  });
                } else {
                  print("error");
                }
              },
              minWidth: MediaQuery.sizeOf(context).width,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: Colors.amber,
              textColor: Colors.white,
              child: const Text("Login"),
            )

            // ElevatedButton(
            //   onPressed: () async {
            //     controller.text =
            //         SharedHelper.prefs.getString("name") ?? "No Value";
            //   },
            //   child: const Text("Get Data"),
            // ),
            // ElevatedButton(
            //   onPressed: () async {
            //     await SharedHelper.prefs.setString("name", controller.text);
            //     controller.text = "";
            //   },
            //   child: const Text("Save Data"),
            // ),
            // ElevatedButton(
            //   onPressed: () async {
            //     await SharedHelper.prefs.remove("name");
            //     controller.text = "";
            //   },
            //   child: const Text("Remove Data"),
            // ),

            // ElevatedButton(
            //   onPressed: () async {
            //     await SharedHelper.prefs.clear();
            //   },
            //   child: const Text("Remove Data"),
            // ),

            // Lottie.asset(
            //   "assets/animation/loading.json",
            //   width: 100,
            //   height: 100,
            //   repeat: true,
            //   onLoaded: (p0) {},
            //   // reverse: ,
            // ),
          ],
        ),
      ),
    );
  }
}
