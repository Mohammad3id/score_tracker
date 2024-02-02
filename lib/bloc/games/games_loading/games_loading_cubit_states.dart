import 'package:score_tracker/core/bloc/bloc_fail_state.dart';
import 'package:score_tracker/data/models/game.dart';

sealed class GamesLoadingState {}

class GamesLoadingInProgress extends GamesLoadingState {}

class GamesLoadingFailed extends GamesLoadingState implements BlocFailState {
  @override
  final Object error;

  GamesLoadingFailed(this.error);
}

class GamesLoadingSuccess extends GamesLoadingState {
  final List<Game> games;
  GamesLoadingSuccess(this.games);
}
