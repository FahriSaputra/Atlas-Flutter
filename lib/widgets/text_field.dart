import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final bool obscureText;

  TextInput({
    @required this.onChanged,
    @required this.hintText,
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(244, 50, 127, 1),
              width: 2,
            ),
          ),
          fillColor: Colors.black,
          hintText: hintText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
