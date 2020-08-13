import 'package:flutter/material.dart';

String hint(bool change) => change ? 'E-mail' : 'Error';
String helper(bool change) => change ? 'Ok!' : 'Invalid email';
TextStyle textStyle(bool other, Color colorOne) {
  return TextStyle(color: other ? colorOne : Colors.red);
}

OutlineInputBorder outlineInputBorder(bool switching) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(34),
    borderSide: BorderSide(
      width: 1,
      color: switching ? Colors.blue : Colors.red,
    ),
    // errorText: (!state.text.contains('@')) ? 'Invalid email' : '',
  );
}
