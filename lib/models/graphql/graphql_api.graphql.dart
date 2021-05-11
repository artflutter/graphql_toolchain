// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin PokemonFragmentMixin {
  String number;
  String name;
}

@JsonSerializable(explicitToJson: true)
class GetPokemon$Query$Pokemon with EquatableMixin, PokemonFragmentMixin {
  GetPokemon$Query$Pokemon();

  factory GetPokemon$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$GetPokemon$Query$PokemonFromJson(json);

  @override
  List<Object> get props => [number, name];
  Map<String, dynamic> toJson() => _$GetPokemon$Query$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPokemon$Query with EquatableMixin {
  GetPokemon$Query();

  factory GetPokemon$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPokemon$QueryFromJson(json);

  GetPokemon$Query$Pokemon pokemon;

  @override
  List<Object> get props => [pokemon];
  Map<String, dynamic> toJson() => _$GetPokemon$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllPokemons$Query$Pokemons with EquatableMixin, PokemonFragmentMixin {
  GetAllPokemons$Query$Pokemons();

  factory GetAllPokemons$Query$Pokemons.fromJson(Map<String, dynamic> json) =>
      _$GetAllPokemons$Query$PokemonsFromJson(json);

  @override
  List<Object> get props => [number, name];
  Map<String, dynamic> toJson() => _$GetAllPokemons$Query$PokemonsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllPokemons$Query with EquatableMixin {
  GetAllPokemons$Query();

  factory GetAllPokemons$Query.fromJson(Map<String, dynamic> json) =>
      _$GetAllPokemons$QueryFromJson(json);

  List<GetAllPokemons$Query$Pokemons> pokemons;

  @override
  List<Object> get props => [pokemons];
  Map<String, dynamic> toJson() => _$GetAllPokemons$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPokemonArguments extends JsonSerializable with EquatableMixin {
  GetPokemonArguments({@required this.name});

  @override
  factory GetPokemonArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPokemonArgumentsFromJson(json);

  final String name;

  @override
  List<Object> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$GetPokemonArgumentsToJson(this);
}

class GetPokemonQuery
    extends GraphQLQuery<GetPokemon$Query, GetPokemonArguments> {
  GetPokemonQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    FragmentDefinitionNode(
        name: NameNode(value: 'pokemonFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Pokemon'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'number'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'getPokemon'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'name')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'pokemon'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'name'),
                    value: VariableNode(name: NameNode(value: 'name')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'pokemonFragment'), directives: [])
              ]))
        ]))
  ]);

  @override
  final String operationName = 'getPokemon';

  @override
  final GetPokemonArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetPokemon$Query parse(Map<String, dynamic> json) =>
      GetPokemon$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetAllPokemonsArguments extends JsonSerializable with EquatableMixin {
  GetAllPokemonsArguments({@required this.first});

  @override
  factory GetAllPokemonsArguments.fromJson(Map<String, dynamic> json) =>
      _$GetAllPokemonsArgumentsFromJson(json);

  final int first;

  @override
  List<Object> get props => [first];
  @override
  Map<String, dynamic> toJson() => _$GetAllPokemonsArgumentsToJson(this);
}

class GetAllPokemonsQuery
    extends GraphQLQuery<GetAllPokemons$Query, GetAllPokemonsArguments> {
  GetAllPokemonsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    FragmentDefinitionNode(
        name: NameNode(value: 'pokemonFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Pokemon'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'number'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'getAllPokemons'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'first')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'pokemons'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'first'),
                    value: VariableNode(name: NameNode(value: 'first')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'pokemonFragment'), directives: [])
              ]))
        ]))
  ]);

  @override
  final String operationName = 'getAllPokemons';

  @override
  final GetAllPokemonsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetAllPokemons$Query parse(Map<String, dynamic> json) =>
      GetAllPokemons$Query.fromJson(json);
}
