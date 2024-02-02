import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_tracker/core/bloc/bloc_fail_state.dart';

class AppBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    final nextState = change.nextState;
    if (nextState is BlocFailState) {
      log("Error from ${bloc.runtimeType}:\n${nextState.error}");
    }
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log("$error");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
