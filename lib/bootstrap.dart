import 'dart:async';

import 'package:flutter/material.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:nolatech/main.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function(
    LocalStorageService localStorageService,
  ) builder,
) async {
  final localStorageService = LocalStorageService();

  await localStorageService.setUpHive();

  runApp(
    MyApp(
      localStorageService: localStorageService,
    ),
  );
}
