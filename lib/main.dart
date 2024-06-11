import 'dart:async';

import 'package:admin_panel_for_library/src/features/app/app.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  Bloc.transformer = bloc_concurrency.sequential<Object?>();

  runZonedGuarded(
    () {
      runApp(const App());
    },
    (error, stack) {
      //TODO: Логирование ошибок
      print('uncaught error $error $stack');
    },
  );
}
