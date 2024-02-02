import 'package:score_tracker/data/models/game.dart';
import 'package:score_tracker/data/models/player.dart';

class GameMatch {
  final int id;
  final MatchMode mode;
  final Game game;
  final List<MatchPlayer> matchPlayers;
  final DateTime date;
  final int target;
  final bool bookmarked;
  final bool ongoing;

  GameMatch({
    required this.id,
    required this.mode,
    required this.game,
    required this.matchPlayers,
    required this.date,
    required this.target,
    required this.bookmarked,
    required this.ongoing,
  });
}

class MatchPlayer {
  final Player player;
  final int score;
  final List<int> scoreHistory;

  MatchPlayer({
    required this.player,
    required this.score,
    required this.scoreHistory,
  });
}

enum MatchMode {
  goldenTarget,
  lethalTarget,
  lastPlayerStanding,
  lastLoserStanding;
}
