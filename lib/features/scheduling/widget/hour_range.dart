import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/features/scheduling/bloc/reserved_hours/reserved_hours_bloc.dart';
import 'package:nolatech/features/scheduling/bloc/reserved_hours/reserved_hours_state.dart';

class HourRange extends StatefulWidget {
  const HourRange({
    super.key,
    required this.onSelect,
  });

  final void Function(int selectedHour) onSelect;

  @override
  State<HourRange> createState() => _HourRangeState();
}

class _HourRangeState extends State<HourRange> {
  final availableHours = [14, 15, 16];

  int? selectedHour;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservedHoursBloc, ReservedHoursState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loaded: (reservedHours) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...availableHours.map(
              (hour) {
                return InkWell(
                  onTap: () =>
                      reservedHours.contains(hour) ? null : _onSelect(hour),
                  child: Container(
                    height: 40,
                    width: 70,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: reservedHours.contains(hour)
                          ? Colors.grey
                          : selectedHour == hour
                              ? const Color(0xff0a3740)
                              : Colors.white,
                      border: Border.all(color: const Color(0xff0a3740)),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Center(
                      child: Text(
                        '$hour:00',
                        style: TextStyle(
                          color: selectedHour == hour
                              ? Colors.white
                              : const Color(0xff0a3740),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void _onSelect(int selectedTime) {
    setState(() {
      widget.onSelect.call(selectedTime);
      selectedHour = selectedTime;
    });
  }
}
