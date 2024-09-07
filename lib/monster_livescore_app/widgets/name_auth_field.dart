import 'package:flutter/material.dart';

import 'my_text_field.dart';

class NameAuthField extends StatefulWidget {
  final formKey1;
  const NameAuthField({super.key, required this.formKey1});

  @override
  State<NameAuthField> createState() => _NameAuthFieldState();
}

class _NameAuthFieldState extends State<NameAuthField> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey1,
      child: MyTextField(
        label: 'name',
        keyboardType: TextInputType.text,
        obscureText: false,
        validator: (val) {
          if (val!.isEmpty) {
            return 'Name cannot be empty';
          }
          return null;
        },
      ),
    );
  }
}
