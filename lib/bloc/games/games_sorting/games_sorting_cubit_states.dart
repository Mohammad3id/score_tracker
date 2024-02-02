sealed class GamesSortingState {}

class GamesSortingNoSort extends GamesSortingState {}

class GamesSortingByName extends GamesSortingState {
  final bool ascending;

  GamesSortingByName({this.ascending = true});
}
