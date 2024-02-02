import 'package:flutter/material.dart';
import 'package:score_tracker/data/models/game.dart';

class GameTile extends StatelessWidget {
  final Game game;
  const GameTile({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: game.color.value,
              child: Text(
                game.name[0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 18),
            Text(
              game.name,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
