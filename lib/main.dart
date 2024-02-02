import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_tracker/app.dart';
import 'package:score_tracker/core/bloc/bloc_observer.dart';
import 'package:score_tracker/core/isar_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarService.init();
  Bloc.observer = AppBlocObserver();

  runApp(ScoreTrackerApp());
}
