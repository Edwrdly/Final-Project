import 'package:flutter/material.dart';
import '../components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailTextController = TextEditingController();
final passwordTextController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column (
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock,size: 100),
              const SizedBox(height: 25),
              const Text("Hello again, we've missed you!"),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailTextController,
                hintText: 'Email',
                obscureText: false
              ),
              
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordTextController,
                hintText: 'Password',
                obscureText: true, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
