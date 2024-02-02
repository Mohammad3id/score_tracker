import 'package:score_tracker/data/dummy/matches.dart';
import 'package:score_tracker/data/models/game.dart';
import 'package:score_tracker/data/models/match.dart';

class MatchesRepo {
  static final instance = MatchesRepo();

  Future<List<GameMatch>> getMatches() async {
    return DummyMatches.matches;
  }
}