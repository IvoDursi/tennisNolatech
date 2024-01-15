import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/app/bloc/bloc.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
