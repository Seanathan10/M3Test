import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColourModeCheckbox extends StatefulWidget {
  const ColourModeCheckbox({Key? key}) : super(key: key);

  @override
  State<ColourModeCheckbox> createState() => _ColourModeCheckboxState();
}

class _ColourModeCheckboxState extends State<ColourModeCheckbox> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
        HapticFeedback.selectionClick();
      },
    );
  }
}
