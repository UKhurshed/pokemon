import 'package:flutter/material.dart';
import 'widgets.dart';

class PokemonAbilities extends StatelessWidget {
  final String firstAbility;
  final String secondAbility;
  final String typeName;

  const PokemonAbilities(
      {Key? key,
        required this.firstAbility,
        required this.secondAbility,
        required this.typeName
        })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          child: AbilitiesCard(
            firstAbilityName: firstAbility,
            secondAbilityName: secondAbility,
            typeName: typeName,
          ),
        ),
      ],
    );
  }
}