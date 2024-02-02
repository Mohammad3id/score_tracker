import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_tracker/bloc/games/games_sorting/games_sorting_cubit.dart';
import 'package:score_tracker/bloc/games/games_sorting/games_sorting_cubit_states.dart';
import 'package:score_tracker/core/themes/themes.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesSortingCubit, GamesSortingState>(
      builder: (context, state) {
        String label = "Sort";
        Color color = Colors.black;

        if (state is! GamesSortingNoSort) {
          color = AppThemes.primaryColor;
        }

        if (state is GamesSortingByName) {
          label = "By Name";
        }

        return TextButton.icon(
          onPressed: () {
            _showSortModalBottomSheet(context);
          },
          label: const Icon(Icons.sort),
          icon: Text(label),
          style: TextButton.styleFrom(
            foregroundColor: color,
          ),
        );
      },
    );
  }

  void _showSortModalBottomSheet(BuildContext context) {
    final cubit = BlocProvider.of<GamesSortingCubit>(context);

    final sortingMethods = [
      () => cubit.sortByName(ascending: true),
      () => cubit.sortByName(ascending: false),
      () => cubit.removeSort(),
    ];

    sortingMethods[Random().nextInt(sortingMethods.length)]();
  }
}
