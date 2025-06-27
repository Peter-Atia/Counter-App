import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAState());
  int teamAPoints = 0, teamBPoints = 0;

  void incrementCubit({required String team, required int buttonNumber}) {
    if (team == "A") {
      teamAPoints += buttonNumber;
      emit(CounterAState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBState());
    }
  }

  void resetCubit() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
