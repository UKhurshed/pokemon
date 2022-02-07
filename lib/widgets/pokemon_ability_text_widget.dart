import 'package:flutter/material.dart';

class PokemonAbilityTextWidget extends StatelessWidget {
  final String abilityName;

  const PokemonAbilityTextWidget({Key? key, required this.abilityName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      abilityName,
      style: const TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}