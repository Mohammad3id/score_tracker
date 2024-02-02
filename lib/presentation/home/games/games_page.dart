import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_tracker/bloc/games/games_loading/games_loading_cubit.dart';
import 'package:score_tracker/bloc/games/games_sorting/games_sorting_cubit.dart';
import 'package:score_tracker/bloc/games/games_sorting/games_sorting_cubit_states.dart';
import 'package:score_tracker/core/themes/themes.dart';
import 'package:score_tracker/presentation/home/games/games_view.dart';
import 'package:score_tracker/presentation/home/games/widgets/sort_button.dart';

@RoutePage()
class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GamesLoadingCubit()),
        BlocProvider(create: (_) => GamesSortingCubit()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Games"),
          centerTitle: false,
          actions: const [SortButton()],
        ),
        body: const GamesView(),
      ),
    );
  }
}
