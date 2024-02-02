import 'package:isar/isar.dart';
import 'package:score_tracker/core/themes/main_colors.dart';

part 'game.g.dart';

@collection
class DBGame {
  Id id = Isar.autoIncrement;
  
  @enumerated
  MainColors color;
  
  String name;

  DBGame({
    required this.color,
    required this.name,
  });
}
