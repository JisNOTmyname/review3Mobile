import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  String? label, hint;

  CustomTextfield(
      {super.key, required this.controller, required label, required hint});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}