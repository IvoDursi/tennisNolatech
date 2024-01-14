import 'package:flutter/material.dart';
import 'package:nolatech/app/resources/resources.dart';

class NoReservations extends StatelessWidget {
  const NoReservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            AppImages.noreservations,
            scale: 2,
            color: Colors.grey[300],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'No hay reservas en \neste momento',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey[300],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
