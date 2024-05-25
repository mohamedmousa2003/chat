import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class TapTextForm extends StatelessWidget {
  TextEditingController controller;
  final FormFieldValidator<String> validator;
  String label;

  TapTextForm({
    super.key,
    required this.controller,
    required this.label,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      style: theme.textTheme.bodyMedium,
      validator: validator,
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
