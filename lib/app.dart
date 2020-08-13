import 'package:bloc_pattern/blocs/cubit/bloc_cubit.dart';
import 'package:bloc_pattern/blocs/form/form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/form_app.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => FormBloc(),
        ),
      ],
      child: MaterialApp(
        home: FormValidation(),
      ),
    );
  }
}
