import 'package:bloc_pattern/blocs/form/form_event.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormChangingState> {
  FormBloc() : super(const FormChangingState());

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey get scaffoldKey {
    return _scaffoldKey;
  }

  @override
  Stream<FormChangingState> mapEventToState(FormEvent event) async* {
    if (event is EmailChanged) {
      if (!event.email.contains("@")) {
        yield FormChangingState(
          emailError: FiledType.Invalid,
          emailCondition: false,
        );
      } else if (event.email == null) {
        yield FormChangingState(
          emailError: FiledType.Empty,
          emailCondition: false,
        );
      } else {
        yield SuccessState(true);
      }
    }

//    if (event is EmailSubmit) {
//      if (event.email == null) {
//        yield FormChangingState(
//          emailError: FiledType.Empty,
//          emailCondition: false,
//        );
//        yield changeUi(false);
//      } else if (!event.email.contains('@')) {
//        yield FormChangingState(
//          emailError: FiledType.Empty,
//          emailCondition: false,
//        );
//        yield changeUi(false);
//      } else {
//        yield changeUi(true);
//        yield SuccessState();
//      }
//    }
  }

  navigate() {}

//  changeUi(bool changeToWhat) {
//    switch (changeToWhat) {
//      case true:
//        final SnackBar snackBar = SnackBar(
//          content: Text(
//            'Email is Valid',
//            style: TextStyle(
//              color: Colors.green,
//            ),
//          ),
//        );
//        _scaffoldKey.currentState.showSnackBar(snackBar);
//        break;
//      case false:
//        final SnackBar snackBar = SnackBar(
//          content: Text(
//            'Email is Invalid',
//            style: TextStyle(
//              color: Colors.red,
//            ),
//          ),
//        );
//        _scaffoldKey.currentState.showSnackBar(snackBar);
//        break;
//    }
//  }
}
