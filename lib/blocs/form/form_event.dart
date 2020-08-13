import 'package:flutter/cupertino.dart';

abstract class FormEvent {
  const FormEvent();
}

class EmailChanged extends FormEvent {
  final String email;
  EmailChanged({this.email});
}

class EmailSubmit extends FormEvent {
  final String email;
  EmailSubmit(this.email);
}
