import 'package:dribble_ui_loggin_page/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    final bool obscureText = true;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 48, 145, 224),
              const Color.fromARGB(176, 39, 146, 233),
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 193, 235, 255),
                          blurRadius: 7,
                          spreadRadius: 3,
                          offset: Offset(0, 6),
                        ),
                      ]),
                  child: Icon(
                    Icons.login,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Sign in with email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Effortlessly manage & track orders from custumers to the kitchen with real-time updates',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextfield(
                    controller: emailController,
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    obscureText: false),
                const SizedBox(height: 16),
                CustomTextfield(
                    controller: emailController,
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.visibility)),
                    obscureText: false),
                const SizedBox(height: 3),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
