import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/app/utils/utils.dart';
import 'package:nolatech/extensions/extensions.dart';
import 'package:nolatech/features/home/home.dart';
import 'package:nolatech/map/map.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({
    super.key,
    required this.reservation,
    this.rainChances,
  });

  final Reservation reservation;
  final String? rainChances;

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      child: Container(
        height: 350,
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          color: const Color(0xff0a3740).withOpacity(0.7),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(5),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 5),
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
                  reservation.field.fieldFromString.image,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xff0a3740).withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                child: Text(
                  reservation.field.fieldFromString.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
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
                            Row(
                              children: [
                                const Icon(Icons.person, color: Colors.white),
                                const SizedBox(width: 4),
                                _buildText(reservation.name),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.calendar_today_rounded,
                                    color: Colors.white),
                                const SizedBox(width: 4),
                                _buildText(stringDateFormat(reservation.date)),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.watch_later_outlined,
                                    color: Colors.white),
                                const SizedBox(width: 4),
                                _buildText(stringHourFormat(reservation.date)),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        if (rainChances != null) ...{
                          Row(
                            children: [
                              _buildText('Lluvia $rainChances%'),
                              const Icon(
                                Icons.water_drop_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                        } else ...{
                          Row(
                            children: [
                              _buildText('Sin conexión '),
                              const Icon(
                                Icons.water_drop_outlined,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                        }
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 35,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReservationLocation(
                                field: reservation.field.fieldFromString,
                              ),
                            ),
                          ),
                          icon: const Icon(Icons.place, size: 18),
                          label: const Text('Ver en mapa'),
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
                              const SizedBox(width: 5),
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
                  const SizedBox(height: 2)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _buildText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Colors.white,
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
            'Deseas eliminar la reseva en la cancha ${reservation.field} el dia ${stringDateFormat(reservation.date)} a las ${reservation.date.hour} hs, a nombre de ${reservation.name}?',
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.removeReservation(reservation));
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
