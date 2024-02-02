import 'package:flutter/material.dart';
import 'package:score_tracker/core/router/app_router.dart';
import 'package:score_tracker/presentation/home/home.dart';
import 'package:score_tracker/core/themes/themes.dart';

class ScoreTrackerApp extends StatelessWidget {
  ScoreTrackerApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
