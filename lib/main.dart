import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/cubit/bloc_observer.dart';
import 'app.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(MyApp());
}
