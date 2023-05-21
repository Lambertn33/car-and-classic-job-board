import 'package:careers_app/helpers/constants.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final int maxLines;
  final String hintText;
  final TextInputType keyboardType;
  final String errorMessage;
  const TextFormFieldWidget(
      {required this.maxLines,
      required this.hintText,
      required this.keyboardType,
      required this.errorMessage,
      super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Constants.primaryColor.withOpacity(0.4),
          fontSize: 14
        ),
        hintText: widget.hintText,
        filled: true,
        fillColor: Constants.lightColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        errorStyle: const TextStyle(fontSize: 16)
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return widget.errorMessage;
        }
        return null;
      },
    );
  }
}
