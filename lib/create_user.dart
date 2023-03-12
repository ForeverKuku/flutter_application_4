import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/login_screen.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Registration",
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => LoginScreen())));
                },
                child: const Text("Create Account"),
              ),
            ]),
          ),
        ));
  }
}
