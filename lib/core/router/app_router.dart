import 'package:auto_route/auto_route.dart';
import 'package:score_tracker/presentation/home/home.dart';
import 'package:score_tracker/presentation/home/games/games_page.dart';
import 'package:score_tracker/presentation/home/matches/matches_page.dart';
import 'package:score_tracker/presentation/home/players/players_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: MatchesRoute.page),
            AutoRoute(page: GamesRoute.page),
            AutoRoute(page: PlayersRoute.page),
          ],
        ),
      ];
}
