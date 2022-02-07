import 'package:flutter/material.dart';
import 'widgets.dart';

class AbilitiesCard extends StatelessWidget {
  final String firstAbilityName;
  final String secondAbilityName;
  final String typeName;
  const AbilitiesCard(
      {Key? key,
        required this.firstAbilityName,
        required this.secondAbilityName,
        required this.typeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey.shade200,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Abilities',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            PokemonAbilityTextWidget(abilityName: firstAbilityName),
            PokemonAbilityTextWidget(abilityName: secondAbilityName),
            const SizedBox(height: 15),
            const Text(
              'Types',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            PokemonAbilityTextWidget(abilityName: typeName),
          ],
        ),
      ),
    );
  }
}