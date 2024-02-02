import 'package:score_tracker/data/dummy/matches.dart';
import 'package:score_tracker/data/models/game.dart';
import 'package:score_tracker/data/models/match.dart';

class GameMatchesRepo {
  Future<List<GameMatch>> getMatches() async {
    return DummyMatches.matches;
  }
}