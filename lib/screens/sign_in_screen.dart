import 'package:flutter/material.dart';
import 'package:flutter_application_31/components/default_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            DefaultTextField(
              controller: emailController,
              icon: Icons.email,
              label: "Email",
            ),

            DefaultTextField(
              controller: passwordController,
              icon: Icons.security,
              label: "Password",
            ),

            MaterialButton(
              onPressed: () {
                print("login");
              },
              minWidth: 300,
              child: const Text("Login"),
              textColor: Colors.white,
              color: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            MaterialButton(
              onPressed: () {
                print("create account");
              },
              minWidth: 300,
              child: const Text("Create Account"),
              textColor: Colors.white,
              color: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            )

            // TextFormField(
            //   controller: emailController,
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(
            //       Icons.email,
            //       color: Colors.red,
            //     ),
            //     labelText: "Email",
            //     labelStyle: TextStyle(color: Colors.red),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //       ),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //       ),
            //     ),
            //   ),
            // ),
            // TextFormField(
            //   controller: passwordController,
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(
            //       Icons.security,
            //       color: Colors.red,
            //     ),
            //     labelText: "Password",
            //     labelStyle: TextStyle(color: Colors.red),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //       ),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
