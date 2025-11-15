import 'package:flutter/material.dart';

class TimeOptionButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const TimeOptionButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected
              ? Colors.teal.withOpacity(0.06)
              : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected ? Colors.teal : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class TimeOptionRow extends StatefulWidget {
  const TimeOptionRow({super.key});

  @override
  State<TimeOptionRow> createState() => _TimeOptionRowState();
}

class _TimeOptionRowState extends State<TimeOptionRow> {
  String selectedTimeOption = 'Week';

  final List<String> timeOptions = ['Day', 'Week', 'Month', 'Year'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: timeOptions.map((option) {
        final isSelected = option == selectedTimeOption;
        return TimeOptionButton(
          label: option,
          isSelected: isSelected,
          onTap: () {
            setState(() {
              selectedTimeOption = option;
            });
          },
        );
      }).toList(),
    );
  }
}
