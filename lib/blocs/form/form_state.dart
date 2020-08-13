class FormChangingState {
  final FiledType emailError;
  final bool emailCondition;
  const FormChangingState({
    this.emailCondition = true,
    this.emailError,
  });
}

class SuccessState extends FormChangingState {
  final bool isDone;
  SuccessState(this.isDone);
}

enum FiledType {
  Invalid,
  Empty,
}
