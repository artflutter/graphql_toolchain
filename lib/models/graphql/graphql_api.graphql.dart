// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CompaniesData$Query$AllCompanies with EquatableMixin {
  CompaniesData$Query$AllCompanies();

  factory CompaniesData$Query$AllCompanies.fromJson(
          Map<String, dynamic> json) =>
      _$CompaniesData$Query$AllCompaniesFromJson(json);

  String id;

  String name;

  String industry;

  @override
  List<Object> get props => [id, name, industry];
  Map<String, dynamic> toJson() =>
      _$CompaniesData$Query$AllCompaniesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesData$Query with EquatableMixin {
  CompaniesData$Query();

  factory CompaniesData$Query.fromJson(Map<String, dynamic> json) =>
      _$CompaniesData$QueryFromJson(json);

  List<CompaniesData$Query$AllCompanies> allCompanies;

  @override
  List<Object> get props => [allCompanies];
  Map<String, dynamic> toJson() => _$CompaniesData$QueryToJson(this);
}

class CompaniesDataQuery
    extends GraphQLQuery<CompaniesData$Query, JsonSerializable> {
  CompaniesDataQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'CompaniesData'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'allCompanies'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'industry'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'CompaniesData';

  @override
  List<Object> get props => [document, operationName];
  @override
  CompaniesData$Query parse(Map<String, dynamic> json) =>
      CompaniesData$Query.fromJson(json);
}
