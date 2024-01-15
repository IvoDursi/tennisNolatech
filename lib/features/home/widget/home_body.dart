import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/features/features.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) => state.maybeMap(
        loaded: (state) => context.read<RainChancesBloc>().add(
              RainChancesEvent.init(state.reservations),
            ),
        orElse: () {
          return null;
        },
      ),
      builder: (context, state) => state.maybeWhen(
        orElse: () => Center(
          child: CircularProgressIndicator(
            color: const Color(0xff0a3740).withOpacity(0.8),
          ),
        ),
        failed: () => Center(
          child: Text(
            'Ha ocurrido un error',
            style: TextStyle(color: Colors.red[900], fontSize: 26),
          ),
        ),
        loaded: (reservations) {
          if (reservations.isEmpty) return const NoReservations();

          return BlocBuilder<RainChancesBloc, RainChancesState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(
                  color: const Color(0xff0a3740).withOpacity(0.8),
                ),
              ),
              loaded: (rainChances) => ListView.builder(
                itemCount: reservations.length,
                itemBuilder: (context, index) => ReservationCard(
                  reservation: reservations[index],
                  rainChances: rainChances[index],
                ),
              ),
              failed: (_) => ListView.builder(
                itemCount: reservations.length,
                itemBuilder: (context, index) => ReservationCard(
                  reservation: reservations[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
