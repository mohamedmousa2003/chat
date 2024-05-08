import 'package:chat/pages/login/widget/custom_buttom.dart';
import 'package:flutter/material.dart';

import '../../Shared/styles/component/constants.dart';
import '../../Shared/styles/component/widget/tap_text_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var loginController = TextEditingController();
    var passController = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/image 10.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                login,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              TapTextForm(
                controller: loginController,
                label: email,
              ),
              const SizedBox(height: 20),
              TapTextForm(
                controller: passController,
                label: password,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {},
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
                      onTap: () {},
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
