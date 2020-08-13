import 'package:bloc_pattern/blocs/form/form_bloc.dart';
import 'package:bloc_pattern/blocs/form/form_event.dart';
import 'package:bloc_pattern/blocs/form/form_state.dart';
import 'package:bloc_pattern/screens/counter_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../consts.dart';

// ignore: must_be_immutable
class FormValidation extends StatelessWidget {
  String emailValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('BloC Form Example'),
          ),
          key: context.bloc<FormBloc>().scaffoldKey,
          body: BlocBuilder<FormBloc, FormChangingState>(
              builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: TextField(
                      onChanged: (val) {
                        context.bloc<FormBloc>().add(EmailChanged(email: val));
                        emailValue = val;
                      },
                      decoration: InputDecoration(
                        hintText: hint(state.emailCondition),
                        labelText: 'E-mail',
                        labelStyle:
                            textStyle(state.emailCondition, Colors.blue),
                        helperText: emailValue == null
                            ? ''
                            : helper(state.emailCondition),
                        helperStyle:
                            textStyle(state.emailCondition, Colors.green),
                        enabledBorder: outlineInputBorder(state.emailCondition),
                        focusedBorder: outlineInputBorder(state.emailCondition),
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: state.emailCondition && emailValue != null
                        ? () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CounterScreen();
                            }));
                          }
                        : null,
                    child: Text('Move to Counter App'),
                  )
                ],
              ),
            );
          })),
    );
  }
}
