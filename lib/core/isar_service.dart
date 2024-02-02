import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:score_tracker/data/schemas/game.dart';
import 'package:score_tracker/data/schemas/player.dart';

class IsarService {
  static late Isar instance;

  static const _schemas = [DBGameSchema, DBPlayerSchema];

  static Future init() async {
    final dir = await getApplicationDocumentsDirectory();
    instance = await Isar.open(_schemas, directory: dir.path);
  }
}
