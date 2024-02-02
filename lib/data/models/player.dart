import 'package:score_tracker/core/themes/main_colors.dart';

class Player {
  final int id ;
  final MainColors color;
  final String name;
  final String nickName;

  Player({
    required this.id,
    required this.color,
    required this.name,
    required this.nickName,
  });
}
