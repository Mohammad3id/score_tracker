import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_tracker/bloc/games/games_loading/games_loading_cubit.dart';
import 'package:score_tracker/bloc/games/games_loading/games_loading_cubit_states.dart';
import 'package:score_tracker/presentation/home/games/games_content_loaded.dart';
import 'package:score_tracker/presentation/widgets/content_error.dart';
import 'package:score_tracker/presentation/widgets/content_loading.dart';

class GamesView extends StatelessWidget {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesLoadingCubit, GamesLoadingState>(
      builder: (context, state) => switch (state) {
        GamesLoadingInProgress() => const ContentLoading(),
        GamesLoadingFailed() => const ContentError(
            message: "Could not load games :(",
          ),
        GamesLoadingSuccess() => GamesContentLoaded(games: state.games),
      },
    );
  }
}
