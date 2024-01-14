import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/app/bloc/bloc.dart';
import 'package:nolatech/features/fields/view/fields_page.dart';
import 'package:nolatech/features/home/home.dart';
import 'package:nolatech/features/home/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Row(
          children: [
            const Text(
              'Reservas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            BlocBuilder<InternetConnectionBloc, InternetConnectionState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => const Icon(Icons.wifi_off_outlined),
                connected: () => const Icon(Icons.wifi),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0a3740).withOpacity(0.9),
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FieldsPage(),
          ),
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          failed: () => Center(
            child: Text(
              'Ha ocurrido un error',
              style: TextStyle(color: Colors.red[900], fontSize: 26),
            ),
          ),
          loading: () => Center(
            child: CircularProgressIndicator(
                color: const Color(0xff0a3740).withOpacity(0.8)),
          ),
          loaded: (reservations) {
            if (reservations.isEmpty) {
              return const NoReservations();
            }
            return ListView.builder(
              itemCount: reservations.length,
              itemBuilder: (context, index) => ReservationCard(
                reservation: reservations[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
