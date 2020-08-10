import 'package:flutter/material.dart';
import 'package:bloc_pattern/blocs/bloc_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  static const routeName = '/counter_app';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('BloC Counter Example'),
      ),
      key: context.bloc<CounterCubit>().scaffoldKey,
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, states) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: () => context.bloc<CounterCubit>().increment(),
                      child: Icon(Icons.add),
                    ),
                    context.bloc<CounterCubit>().changeUi(),
                    FloatingActionButton(
                      onPressed: () => context.bloc<CounterCubit>().decrement(),
                      child: Icon(Icons.minimize),
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    ));
  }
}
