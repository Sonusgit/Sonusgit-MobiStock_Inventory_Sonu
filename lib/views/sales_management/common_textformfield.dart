
import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final double width;

  const CommonTextFormField({
    Key? key,
    required this.label,
    required this.hint,
    required this.keyboardType,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(),
        ),
        keyboardType: keyboardType
      ),
    );
  }
}
