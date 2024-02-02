import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_tracker/bloc/games/games_sorting/games_sorting_cubit_states.dart';

class GamesSortingCubit extends Cubit<GamesSortingState> {
  GamesSortingCubit() : super(GamesSortingNoSort());

  void removeSort() {
    emit(GamesSortingNoSort());
  }

  void sortByName({bool ascending = true}) {
    emit(GamesSortingByName(ascending: ascending));
  }
}
