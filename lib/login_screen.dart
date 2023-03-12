import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import 'create_user.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.red,
            Colors.brown,
            Colors.yellow,
            Colors.green,
            Colors.blue,
          ],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: SafeArea(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                  const Text(
                    "Welcome To Harold AR ",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(hintText: 'Email'),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => HomePage())));
                    },
                    child: const Text("LogIn"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Don't have an account?",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CreateUser(),
                        ),
                      );
                    },
                    child: const Text('Create Account'),
                  ),
                ])))));
  }
}
