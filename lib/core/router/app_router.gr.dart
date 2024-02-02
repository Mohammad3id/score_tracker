// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GamesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GamesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MatchesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MatchesPage(),
      );
    },
    PlayersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlayersPage(),
      );
    },
  };
}

/// generated route for
/// [GamesPage]
class GamesRoute extends PageRouteInfo<void> {
  const GamesRoute({List<PageRouteInfo>? children})
      : super(
          GamesRoute.name,
          initialChildren: children,
        );

  static const String name = 'GamesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MatchesPage]
class MatchesRoute extends PageRouteInfo<void> {
  const MatchesRoute({List<PageRouteInfo>? children})
      : super(
          MatchesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MatchesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlayersPage]
class PlayersRoute extends PageRouteInfo<void> {
  const PlayersRoute({List<PageRouteInfo>? children})
      : super(
          PlayersRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlayersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
