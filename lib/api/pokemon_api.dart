import 'dart:convert';

import 'package:flutter_pokemon/models/pokemon_cards_model.dart';
import 'package:http/http.dart' as http;

var url = "https://api.pokemontcg.io/v1/cards";

Future<PokemonCards> getPokemons() async {
  var response = await http.get(url);

  Map<String, dynamic> responseJson = jsonDecode(response.body);
  PokemonCards pokemoncards = PokemonCards.fromJson(responseJson);

  return pokemoncards;
}
