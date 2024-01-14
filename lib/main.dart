import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:nolatech/app/bloc/bloc.dart';
import 'package:nolatech/app/resources/themes.dart';
import 'package:nolatech/features/home/home.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';
import 'package:weather_service/weather_service.dart';

import 'bootstrap.dart';

Future<void> main() async {
  await bootstrap(
    (localStorageService) => MyApp(
      localStorageService: localStorageService,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.localStorageService,
  });

  final LocalStorageService localStorageService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => LocalStorageService(),
        ),
        RepositoryProvider(
          create: (context) => const WeatherService(),
        ),
        RepositoryProvider(
          create: (context) => TennisNolatechRepository(
            localStorageService:
                RepositoryProvider.of<LocalStorageService>(context),
            weatherService: RepositoryProvider.of<WeatherService>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc(
              tennisNolatechRepository:
                  RepositoryProvider.of<TennisNolatechRepository>(context),
            ),
          ),
          BlocProvider(
            create: (context) => RainChancesBloc(
              tennisNolatechRepository:
                  RepositoryProvider.of<TennisNolatechRepository>(context),
            ),
          ),
          BlocProvider(
            create: (context) => InternetConnectionBloc()
              ..add(const InternetConnectionEvent.init()),
          ),
        ],
        child: MaterialApp(
          title: 'Tennis Nolatech',
          theme: AppThemes.themeData,
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ),
      ),
    );
  }
}
