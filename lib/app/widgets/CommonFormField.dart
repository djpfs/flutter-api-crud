import 'package:flutter/material.dart';

class CommonFormField extends StatelessWidget {
  final String hintText;
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final Function onChanged;
  final TextInputType keyboardType;

  CommonFormField(
      {this.controller,
      this.hintText,
      @required this.label,
      this.onChanged,
      this.keyboardType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: TextField(
        autofocus: false,
        style: TextStyle(fontSize: 22.0, color: Colors.black87),
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: label,
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
        ),
        keyboardType: keyboardType == null ? TextInputType.text : keyboardType,
        controller:
            controller != null ? controller : new TextEditingController(),
        onChanged: onChanged != null ? onChanged : () {},
      ),
    );
  }
}
