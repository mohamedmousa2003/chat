import 'package:chat/pages/login/widget/custom_buttom.dart';
import 'package:chat/pages/register/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Shared/component/constants.dart';
import '../../Shared/component/widget/tap_text_form.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static String routeName = "login_screen";
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
                login,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              TapTextForm(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter your task";
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
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: loginController.text,
                              password: passController.text);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  }
                },
                title: "LOGIN",
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account ?  ',
                    style: theme.textTheme.bodySmall,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                      child: Text(
                        register,
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
}
