import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({int state}) : super(state = 0);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey get scaffoldKey {
    return _scaffoldKey;
  }

  final SnackBar snackBar = SnackBar(
    content: Text('Counter is 0 please click plus button.'),
  );

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state != 0) {
      emit(state - 1);
    } else {
      _scaffoldKey.currentState.showSnackBar(snackBar);
    }
  }

  Widget changeUi() {
    String updateState = state.toString();
    return Text(
      updateState,
      style: TextStyle(
        color: state == 0 ? Colors.red : Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 19,
      ),
    );
  }
}
