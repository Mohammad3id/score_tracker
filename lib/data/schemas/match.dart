import 'package:isar/isar.dart';
import 'package:score_tracker/data/models/match.dart';
import 'package:score_tracker/data/schemas/game.dart';
import 'package:score_tracker/data/schemas/player.dart';

part 'match.g.dart';

@collection
class DBGameMatch {
  Id id = Isar.autoIncrement;

  @enumerated
  final MatchMode mode;
  final bool bookmarked;
  final bool ongoing;
  final int target;
  final DateTime date;

  final game = IsarLink<DBGame>();
  DBGameMatch({
    required this.mode,
    required this.bookmarked,
    required this.ongoing,
    required this.target,
    required this.date,
  });
}
