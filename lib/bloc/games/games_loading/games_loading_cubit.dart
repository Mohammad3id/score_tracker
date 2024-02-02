import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_tracker/bloc/games/games_loading/games_loading_cubit_states.dart';
import 'package:score_tracker/data/repos/games_repo.dart';

class GamesLoadingCubit extends Cubit<GamesLoadingState> {
  final _gamesRepo = GamesRepo.instance;

  GamesLoadingCubit() : super(GamesLoadingInProgress()) {
    _init();
  }

  Future<void> _init() async {
    try {
      final games = await _gamesRepo.getMatches();
      emit(GamesLoadingSuccess(games));
    } catch (e) {
      emit(GamesLoadingFailed(e));
    }
  }
}
