import 'package:flutter/material.dart';

class HourRange extends StatefulWidget {
  const HourRange({
    Key? key,
    required this.onSelect,
    required this.reservedHours,
  }) : super(key: key);

  final void Function(int selectedHour) onSelect;
  final List<int> reservedHours;

  @override
  State<HourRange> createState() => _HourRangeState();
}

class _HourRangeState extends State<HourRange> {
  int? selectedHour;

  final availableHours = [14, 15, 16];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...availableHours.map(
          (hour) {
            return InkWell(
              onTap: () =>
                  widget.reservedHours.contains(hour) ? null : _onSelect(hour),
              child: Container(
                height: 40,
                width: 70,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: widget.reservedHours.contains(hour)
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
    );
  }

  void _onSelect(int selectedTime) {
    setState(() {
      widget.onSelect.call(selectedTime);
      selectedHour = selectedTime;
    });
  }
}
