
import 'package:flutter/material.dart';

class CommontRadioButton extends StatelessWidget {
  final String label;
  final Icon? icon;
  final String? value;
  final String? groupValue;

  const CommontRadioButton({super.key, required this.label, this.icon, this.value, this.groupValue});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: value, groupValue: groupValue, onChanged: (value) {}),
        if (icon != null) Icon(icon!.icon, color: Colors.black),
        const SizedBox(width: 8),
        Text(label, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
