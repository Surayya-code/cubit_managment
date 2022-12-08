import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  void increament() => emit(state+1);

  void decrement() => emit(state-1);
}
