import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
//Naming convention for an event : the name the event + the action the event performs

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((Event, emit) {
      emit(state + 1);
    });
    if (state > 0)
      on<CounterDecremented>((Event, emit) {
        emit(state - 1);
      });
  }
}
