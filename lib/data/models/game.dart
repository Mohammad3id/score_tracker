import 'package:score_tracker/core/themes/main_colors.dart';

class Game {
  final int id ;
  final MainColors color;
  final String name;

  Game({
    required this.id,
    required this.color,
    required this.name,
  });
}