import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamAIncrement({required String team, required int buttonNum}) {
    if (team == 'A') {
      teamAPoints += buttonNum;
      emit(CounterAIncrement());
    } else {
      teamBPoints += buttonNum;
      emit(CounterBIncrement());
    }
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrement());
  }
}
