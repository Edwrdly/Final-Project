import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(233, 6, 205, 185),
      body: Center(
        child: Column (
          children: [
            const SizedBox(height: 50),
            const Icon(Icons.lock,size: 100),
            const SizedBox(height: 25)
            const Text("Hello again, we've missed you!"),
            const SizedBox(height: 25 )
          ],
        ),
      ),
    );
  }
}
