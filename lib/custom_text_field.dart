import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String regExp;
  final bool isNumeric;
  final Function onChanged;
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.label,
      required this.regExp,
      required this.isNumeric,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (e) => onChanged(),
      controller: controller,
      style: const TextStyle(fontSize: 30),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(regExp))
      ],
    );
  }
}
