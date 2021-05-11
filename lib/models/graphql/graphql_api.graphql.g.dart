// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPokemon$Query$Pokemon _$GetPokemon$Query$PokemonFromJson(
    Map<String, dynamic> json) {
  return GetPokemon$Query$Pokemon()
    ..number = json['number'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$GetPokemon$Query$PokemonToJson(
        GetPokemon$Query$Pokemon instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };

GetPokemon$Query _$GetPokemon$QueryFromJson(Map<String, dynamic> json) {
  return GetPokemon$Query()
    ..pokemon = json['pokemon'] == null
        ? null
        : GetPokemon$Query$Pokemon.fromJson(
            json['pokemon'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetPokemon$QueryToJson(GetPokemon$Query instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon?.toJson(),
    };

GetAllPokemons$Query$Pokemons _$GetAllPokemons$Query$PokemonsFromJson(
    Map<String, dynamic> json) {
  return GetAllPokemons$Query$Pokemons()
    ..number = json['number'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$GetAllPokemons$Query$PokemonsToJson(
        GetAllPokemons$Query$Pokemons instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };

GetAllPokemons$Query _$GetAllPokemons$QueryFromJson(Map<String, dynamic> json) {
  return GetAllPokemons$Query()
    ..pokemons = (json['pokemons'] as List)
        ?.map((e) => e == null
            ? null
            : GetAllPokemons$Query$Pokemons.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetAllPokemons$QueryToJson(
        GetAllPokemons$Query instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons?.map((e) => e?.toJson())?.toList(),
    };

GetPokemonArguments _$GetPokemonArgumentsFromJson(Map<String, dynamic> json) {
  return GetPokemonArguments(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$GetPokemonArgumentsToJson(
        GetPokemonArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

GetAllPokemonsArguments _$GetAllPokemonsArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetAllPokemonsArguments(
    first: json['first'] as int,
  );
}

Map<String, dynamic> _$GetAllPokemonsArgumentsToJson(
        GetAllPokemonsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
    };
