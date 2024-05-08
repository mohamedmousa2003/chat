import 'package:flutter/material.dart';

import '../../colors.dart';

class TapTextForm extends StatelessWidget {
  TextEditingController controller;
  String label;

  TapTextForm({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      style: theme.textTheme.bodyMedium,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "please enter your task";
        }
        return null;
      },
      cursorColor: white,
      decoration: InputDecoration(
        //hintText: local.enter_your_task,
        label: Text(label),
        labelStyle: theme.textTheme.bodySmall,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: white,
          ),
        ),
      ),
    );
  }
}
