import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/extensions/extensions.dart';
import 'package:nolatech/features/home/home.dart';
import 'package:nolatech/map/map.dart';
import 'package:nolatech/app/utils/utils.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

class ReservationCard extends StatefulWidget {
  const ReservationCard({
    super.key,
    required this.reservation,
  });

  final Reservation reservation;

  @override
  State<ReservationCard> createState() => _ReservationCardState();
}

class _ReservationCardState extends State<ReservationCard> {
  @override
  void initState() {
    context
        .read<RainChancesBloc>()
        .add(RainChancesEvent.init(widget.reservation));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      child: Container(
        height: 320,
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
        decoration: const BoxDecoration(
          color: Color(0xff0a3740),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 3),
              blurRadius: 4,
            )
          ],
        ),
        child: Stack(
          children: [
            Container(
              height: 210,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                child: Image.asset(
                  widget.reservation.field.fieldFromString.image,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nombre: ${widget.reservation.name}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Fecha: ${stringDateFormat(widget.reservation.date)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Horario: ${stringHourFormat(widget.reservation.date)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        BlocBuilder<RainChancesBloc, RainChancesState>(
                          builder: (context, state) => state.maybeWhen(
                            orElse: () => const Text('-'),
                            loaded: (chancesOfRain) => Text(
                              'Lluvia $chancesOfRain%',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.water_drop_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 35,
                        child: ElevatedButton.icon(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReservationLocation(
                                field: widget.reservation.field.fieldFromString,
                              ),
                            ),
                          ),
                          icon: const Icon(
                            Icons.place,
                            size: 18,
                          ),
                          label: const Text(
                            'Ver en mapa',
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 170,
                        height: 35,
                        child: TextButton(
                          onPressed: () => _showAlertDialog(context),
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete,
                                size: 18,
                                color: Colors.red[200],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'Eliminar reserva',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Eliminar',
            style: TextStyle(color: Colors.red),
          ),
          content: Text(
            'Deseas eliminar la reseva en ${widget.reservation.name} a las ${widget.reservation.name} a nombre de ${widget.reservation.name}?',
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.removeReservation(widget.reservation));
                Navigator.pop(context);
              },
              child: const Text('Confirmar'),
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Color(0xff0a3740)),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
