import 'package:score_tracker/data/dummy/games.dart';
import 'package:score_tracker/data/models/game.dart';

class GamesRepo {
  static final instance = GamesRepo();

  Future<List<Game>> getMatches() async {
    return DummyGames.games;
  }
}