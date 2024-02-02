import 'dart:math';

import 'package:score_tracker/data/dummy/games.dart';
import 'package:score_tracker/data/dummy/players.dart';
import 'package:score_tracker/data/models/match.dart';

class DummyMatches {
  static final matches = [
    GameMatch(
      id: 0,
      mode: MatchMode.lastPlayerStanding,
      game: DummyGames.uno,
      matchPlayers: _generateRandomPlayers(5, 10),
      date: DateTime.now(),
      target: 500,
      bookmarked: false,
      ongoing: true,
    ),
    GameMatch(
      id: 1,
      mode: MatchMode.lastPlayerStanding,
      game: DummyGames.domino,
      matchPlayers: _generateRandomPlayers(4, 4),
      date: DateTime.now(),
      target: 201,
      bookmarked: false,
      ongoing: true,
    ),
    GameMatch(
      id: 2,
      mode: MatchMode.lastPlayerStanding,
      game: DummyGames.scrable,
      matchPlayers: _generateRandomPlayers(3, 10),
      date: DateTime.now(),
      target: 501,
      bookmarked: false,
      ongoing: true,
    ),
    GameMatch(
      id: 3,
      mode: MatchMode.lethalTarget,
      game: DummyGames.basrah,
      matchPlayers: _generateRandomPlayers(2, 10),
      date: DateTime.now(),
      target: 501,
      bookmarked: false,
      ongoing: true,
    ),
  ];

  static List<MatchPlayer> _generateRandomPlayers(int count, int rounds) {
    final players = [
      DummyPlayers.player1,
      DummyPlayers.player2,
      DummyPlayers.player3,
      DummyPlayers.player4,
      DummyPlayers.player5,
    ];

    players.shuffle();

    return List.generate(count, (index) {
      final scoreHistory =
          List.generate(rounds, (index) => Random().nextInt(100));
      return MatchPlayer(
        player: players[index],
        score: scoreHistory.reduce((acc, score) => acc + score),
        scoreHistory: scoreHistory,
      );
    });
  }
}
