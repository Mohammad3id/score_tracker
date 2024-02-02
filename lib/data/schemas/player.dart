import 'package:isar/isar.dart';
import 'package:score_tracker/core/themes/main_colors.dart';

part 'player.g.dart';

@collection
class DBPlayer {
  Id id = Isar.autoIncrement;
  
  @enumerated
  MainColors color;
  
  String name;
  String nickName;

  DBPlayer({
    required this.color,
    required this.name,
    required this.nickName,
  });
}
