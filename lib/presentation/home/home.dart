import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:score_tracker/core/router/app_router.dart';
import 'package:score_tracker/presentation/home/widgets/bottom_nav_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        MatchesRoute(),
        GamesRoute(),
        PlayersRoute(),
      ],
      builder: (context, child, pageController) {
        final tabRouter = AutoTabsRouter.of(context);
        return Scaffold(
          bottomNavigationBar: AppBottomNavBar(
            selectedIndex: tabRouter.activeIndex,
            onDestinationSelected: tabRouter.setActiveIndex,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          body: child,
        );
      },
    );
  }
}
