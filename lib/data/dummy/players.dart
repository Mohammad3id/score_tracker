import 'package:score_tracker/core/themes/main_colors.dart';
import 'package:score_tracker/data/models/player.dart';

class DummyPlayers {
  static final player1 = Player(
    id: 1,
    color: MainColors.green,
    name: "Mohammad Eid",
    nickName: "Feast",
  );
  static final player2 = Player(
    id: 2,
    color: MainColors.blue,
    name: "Ahmad Elsabagh",
    nickName: "Dye",
  );
  static final player3 = Player(
    id: 3,
    color: MainColors.orange,
    name: "Ahmad Eseily",
    nickName: "Hunnyian",
  );
  static final player4 = Player(
    id: 4,
    color: MainColors.red,
    name: "Mohammad Fekry",
    nickName: "Idea",
  );
  static final player5 = Player(
    id: 5,
    color: MainColors.purple,
    name: "Abdelrahman Hammad",
    nickName: "Arthur",
  );
  static final players = [player1, player2, player3, player4, player5];
}
