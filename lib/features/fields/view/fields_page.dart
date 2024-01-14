import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/extensions/extensions.dart';
import 'package:nolatech/features/scheduling/bloc/bloc.dart';
import 'package:nolatech/features/scheduling/view/scheduling_page.dart';
import 'package:nolatech/features/scheduling/widget/field_card.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

class FieldsPage extends StatelessWidget {
  const FieldsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Canchas',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const CloseButton(),
      ),
      body: ListView(
        children: [
          FieldCard(
            onTap: () => _navigateToScheduling(context, Field.A),
            field: Field.A,
          ),
          FieldCard(
            onTap: () => _navigateToScheduling(context, Field.B),
            field: Field.B,
          ),
          FieldCard(
            onTap: () => _navigateToScheduling(context, Field.C),
            field: Field.C,
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  void _navigateToScheduling(BuildContext context, Field field) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ReservedDaysBloc(
                tennisNolatechRepository:
                    RepositoryProvider.of<TennisNolatechRepository>(context),
                field: field,
              ),
            ),
            BlocProvider(
              create: (context) => ReservedHoursBloc(
                tennisNolatechRepository:
                    RepositoryProvider.of<TennisNolatechRepository>(context),
                field: field,
              ),
            ),
            BlocProvider(
              create: (context) => ReservationBloc(
                tennisNolatechRepository:
                    RepositoryProvider.of<TennisNolatechRepository>(context),
              ),
            ),
          ],
          child: SchedulingPage(field: field),
        ),
      ),
    );
  }
}
