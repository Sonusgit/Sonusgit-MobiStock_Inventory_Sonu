
import 'package:flutter/material.dart';

class CommonDropdownButton extends StatefulWidget {
  final List<dynamic> items;
  

  const CommonDropdownButton({super.key, required this.items});

  @override
  State<CommonDropdownButton> createState() => _CommonDropdownButtonState();
}

class _CommonDropdownButtonState extends State<CommonDropdownButton> {
  dynamic selectedValue;

  @override
  void initState() {
    super.initState();
    if (widget.items.isNotEmpty) {
      selectedValue = widget.items[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: widget.items.map<DropdownMenuItem<dynamic>>((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item.toString()),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
      value: selectedValue,
    );
  }
}
