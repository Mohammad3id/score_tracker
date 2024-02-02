import 'package:score_tracker/core/themes/main_colors.dart';
import 'package:score_tracker/data/models/game.dart';

class DummyGames {
  static final uno = Game(id: 1, color: MainColors.green, name: "UNO");
  static final domino = Game(id: 2, color: MainColors.blue, name: "Domino");
  static final basrah = Game(id: 3, color: MainColors.orange, name: "Basrah");
  static final scrable = Game(id: 4, color: MainColors.red, name: "Scrable");
  static final poker = Game(id: 5, color: MainColors.purple, name: "Poker");
  static final games = [uno, domino, basrah, scrable, poker];
}