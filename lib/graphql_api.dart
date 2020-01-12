// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class EmployeeData with EquatableMixin {
  EmployeeData();

  factory EmployeeData.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDataFromJson(json);

  Employee employee;

  @override
  List<Object> get props => [employee];
  Map<String, dynamic> toJson() => _$EmployeeDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Employee with EquatableMixin {
  Employee();

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  String firstName;

  String id;

  @override
  List<Object> get props => [firstName, id];
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EmployeeDataArguments extends JsonSerializable with EquatableMixin {
  EmployeeDataArguments({this.id});

  factory EmployeeDataArguments.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDataArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$EmployeeDataArgumentsToJson(this);
}

class EmployeeDataQuery
    extends GraphQLQuery<EmployeeData, EmployeeDataArguments> {
  EmployeeDataQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'EmployeeData'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'employee'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'firstName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'EmployeeData';

  @override
  final EmployeeDataArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  EmployeeData parse(Map<String, dynamic> json) => EmployeeData.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CompaniesData with EquatableMixin {
  CompaniesData();

  factory CompaniesData.fromJson(Map<String, dynamic> json) =>
      _$CompaniesDataFromJson(json);

  List<Company> allCompanies;

  @override
  List<Object> get props => [allCompanies];
  Map<String, dynamic> toJson() => _$CompaniesDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Company with EquatableMixin {
  Company();

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  String id;

  String name;

  String industry;

  @override
  List<Object> get props => [id, name, industry];
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

class CompaniesDataQuery extends GraphQLQuery<CompaniesData, JsonSerializable> {
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
  CompaniesData parse(Map<String, dynamic> json) =>
      CompaniesData.fromJson(json);
}
