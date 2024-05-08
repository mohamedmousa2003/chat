import 'package:flutter/material.dart';

import '../../Shared/styles/component/constants.dart';
import '../../Shared/styles/component/widget/tap_text_form.dart';
import '../login/widget/custom_buttom.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "register";

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var loginController = TextEditingController();
    var passController = TextEditingController();
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
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
    );
  }
}
