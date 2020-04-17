// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CompaniesPaginatedData$Query$AllCompaniesPaginated with EquatableMixin {
  CompaniesPaginatedData$Query$AllCompaniesPaginated();

  factory CompaniesPaginatedData$Query$AllCompaniesPaginated.fromJson(
          Map<String, dynamic> json) =>
      _$CompaniesPaginatedData$Query$AllCompaniesPaginatedFromJson(json);

  String id;

  String name;

  String industry;

  @override
  List<Object> get props => [id, name, industry];
  Map<String, dynamic> toJson() =>
      _$CompaniesPaginatedData$Query$AllCompaniesPaginatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesPaginatedData$Query with EquatableMixin {
  CompaniesPaginatedData$Query();

  factory CompaniesPaginatedData$Query.fromJson(Map<String, dynamic> json) =>
      _$CompaniesPaginatedData$QueryFromJson(json);

  List<CompaniesPaginatedData$Query$AllCompaniesPaginated>
      allCompaniesPaginated;

  @override
  List<Object> get props => [allCompaniesPaginated];
  Map<String, dynamic> toJson() => _$CompaniesPaginatedData$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginationInput with EquatableMixin {
  PaginationInput({@required this.limit, @required this.offset});

  factory PaginationInput.fromJson(Map<String, dynamic> json) =>
      _$PaginationInputFromJson(json);

  int limit;

  int offset;

  @override
  List<Object> get props => [limit, offset];
  Map<String, dynamic> toJson() => _$PaginationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesPaginatedDataArguments extends JsonSerializable
    with EquatableMixin {
  CompaniesPaginatedDataArguments({@required this.pagination});

  factory CompaniesPaginatedDataArguments.fromJson(Map<String, dynamic> json) =>
      _$CompaniesPaginatedDataArgumentsFromJson(json);

  final PaginationInput pagination;

  @override
  List<Object> get props => [pagination];
  Map<String, dynamic> toJson() =>
      _$CompaniesPaginatedDataArgumentsToJson(this);
}

class CompaniesPaginatedDataQuery extends GraphQLQuery<
    CompaniesPaginatedData$Query, CompaniesPaginatedDataArguments> {
  CompaniesPaginatedDataQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'CompaniesPaginatedData'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'pagination')),
              type: NamedTypeNode(
                  name: NameNode(value: 'PaginationInput'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'allCompaniesPaginated'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'pagination'),
                    value: VariableNode(name: NameNode(value: 'pagination')))
              ],
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
  final String operationName = 'CompaniesPaginatedData';

  @override
  final CompaniesPaginatedDataArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  CompaniesPaginatedData$Query parse(Map<String, dynamic> json) =>
      CompaniesPaginatedData$Query.fromJson(json);
}

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
