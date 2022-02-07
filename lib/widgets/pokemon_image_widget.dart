import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class PokemonImage extends StatelessWidget {
  final String pokemonImageURL;

  const PokemonImage({Key? key, required this.pokemonImageURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: pokemonImageURL,
        height: 180,
        width: 180,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}