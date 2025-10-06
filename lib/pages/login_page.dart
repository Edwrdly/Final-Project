import 'package:flutter/material.dart';
import '../components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          
                const SizedBox(height: 10),
                MyButton(
                  onTap: () {},
                  text: 'Sign In',
                ),
          
                const SizedBox(height: 25)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?",
                    
                    ),
          
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent  
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
