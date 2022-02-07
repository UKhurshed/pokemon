import 'package:flutter/material.dart';

class StatsItem extends StatelessWidget {
  final String statName;
  final String baseStateName;

  const StatsItem(
      {Key? key, required this.statName, required this.baseStateName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          statName,
          style: const TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            baseStateName,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}