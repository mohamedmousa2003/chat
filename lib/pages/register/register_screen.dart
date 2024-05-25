import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Shared/component/constants.dart';
import '../../Shared/component/widget/tap_text_form.dart';
import '../login/widget/custom_buttom.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "register";

  RegisterScreen({super.key});

  var loginController = TextEditingController();
  var passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var mediaQuery = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/image 10.png"), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              SizedBox(height: mediaQuery.height * 0.26),
              Text(
                register,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              TapTextForm(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter your task";
                  }
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[com]+")
                      .hasMatch(value);
                  if (!emailValid) {
                    return "Please enter valid email";
                  }
                  return null;
                },
                controller: loginController,
                label: email,
              ),
              const SizedBox(height: 20),
              TapTextForm(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter your task";
                  }
                  final bool emailValid = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                      .hasMatch(value);
                  if (!emailValid) {
                    return "Please enter valid password";
                  }
                  return null;
                },
                controller: passController,
                label: password,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () async {
                  if (_formKey.currentState?.validate() == true) {
                    try {
                      await registerUser();
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnaack(
                            context, "The password provided is too weak.");
                      } else if (e.code == 'email-already-in-use') {
                        showSnaack(context,
                            "The account already exists for that email.");
                      }
                    }
                    showSnaack(context, "success.");
                  }
                },
                title: register,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already have an account?   ',
                    style: theme.textTheme.bodySmall,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        login,
                        style: theme.textTheme.bodyMedium,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void showSnaack(BuildContext context, String massage) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      massage,
      style: TextStyle(color: Colors.white),
    )));
  }

  Future<void> registerUser() async {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: loginController.text,
      password: passController.text,
    );
  }
}
