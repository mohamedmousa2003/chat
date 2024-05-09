import 'package:chat/pages/login/widget/custom_buttom.dart';
import 'package:chat/pages/register/register_screen.dart';
import 'package:flutter/material.dart';
import '../../Shared/component/constants.dart';
import '../../Shared/component/widget/tap_text_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String routeName = "login_screen";

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
    );
  }
}
