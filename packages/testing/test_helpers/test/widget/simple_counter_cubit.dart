import 'package:bloc/bloc.dart';

class SimpleCounterCubit extends Cubit<int> {
  SimpleCounterCubit(super.initialState);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}
