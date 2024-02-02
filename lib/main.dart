import 'package:flutter/material.dart';
import 'package:score_tracker/app.dart';
import 'package:score_tracker/core/isar_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarService.init();

  runApp(ScoreTrackerApp());
}
