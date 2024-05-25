import 'package:flutter/material.dart';

import '../../../Shared/styles/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  void Function()? onTap;
  String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.bodyLarge?.copyWith(color: black),
          ),
        ),
      ),
    );
  }
}
