import 'package:score_tracker/data/dummy/players.dart';
import 'package:score_tracker/data/models/player.dart';

class PlayersRepo {
  static final instance = PlayersRepo();

  Future<List<Player>> getMatches() async {
    return DummyPlayers.players;
  }
}