import 'package:flutter/material.dart';
import 'package:score_tracker/data/models/game.dart';
import 'package:score_tracker/presentation/home/games/widgets/game_tile.dart';

class GamesContentLoaded extends StatelessWidget {
  final List<Game> games;

  const GamesContentLoaded({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GameTile(game: games[index]);
      },
      itemCount: games.length,
    );
  }
}
