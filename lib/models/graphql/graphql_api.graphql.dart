// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:http/http.dart';
import 'package:graphql_toolchain/artemis.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CompaniesPaginatedData$Query$AllCompaniesPaginated
    extends JsonSerializable with EquatableMixin {
  CompaniesPaginatedData$Query$AllCompaniesPaginated();

  factory CompaniesPaginatedData$Query$AllCompaniesPaginated.fromJson(
          Map<String, dynamic> json) =>
      _$CompaniesPaginatedData$Query$AllCompaniesPaginatedFromJson(json);

  late String id;

  String? name;

  String? industry;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [id, name, industry, $$typename];
  @override
  Map<String, dynamic> toJson() =>
      _$CompaniesPaginatedData$Query$AllCompaniesPaginatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesPaginatedData$Query extends JsonSerializable
    with EquatableMixin {
  CompaniesPaginatedData$Query();

  factory CompaniesPaginatedData$Query.fromJson(Map<String, dynamic> json) =>
      _$CompaniesPaginatedData$QueryFromJson(json);

  List<CompaniesPaginatedData$Query$AllCompaniesPaginated>?
      allCompaniesPaginated;

  @override
  List<Object?> get props => [allCompaniesPaginated];
  @override
  Map<String, dynamic> toJson() => _$CompaniesPaginatedData$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginationInput extends JsonSerializable with EquatableMixin {
  PaginationInput({required this.limit, required this.offset});

  factory PaginationInput.fromJson(Map<String, dynamic> json) =>
      _$PaginationInputFromJson(json);

  late int limit;

  late int offset;

  @override
  List<Object?> get props => [limit, offset];
  @override
  Map<String, dynamic> toJson() => _$PaginationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesData$Query$AllCompanies extends JsonSerializable
    with EquatableMixin {
  CompaniesData$Query$AllCompanies();

  factory CompaniesData$Query$AllCompanies.fromJson(
          Map<String, dynamic> json) =>
      _$CompaniesData$Query$AllCompaniesFromJson(json);

  late String id;

  String? name;

  String? industry;

  @JsonKey(
      fromJson: fromGraphQLUploadToDartMultipartFile,
      toJson: fromDartMultipartFileToGraphQLUpload)
  late MultipartFile logo;

  @JsonKey(
      fromJson: fromGraphQLUploadNullableToDartMultipartFileNullable,
      toJson: fromDartMultipartFileNullableToGraphQLUploadNullable)
  MultipartFile? logoSmall;

  @JsonKey(
      fromJson: fromGraphQLListUploadToDartListMultipartFile,
      toJson: fromDartListMultipartFileToGraphQLListUpload)
  late List<MultipartFile> productPhotos;

  @JsonKey(
      fromJson: fromGraphQLListUploadNullableToDartListMultipartFileNullable,
      toJson: fromDartListMultipartFileNullableToGraphQLListUploadNullable)
  late List<MultipartFile?> productPhotosSmall;

  @JsonKey(
      fromJson: fromGraphQLListNullableUploadToDartListNullableMultipartFile,
      toJson: fromDartListNullableMultipartFileToGraphQLListNullableUpload)
  List<MultipartFile>? moreImages;

  @JsonKey(
      fromJson:
          fromGraphQLListNullableUploadNullableToDartListNullableMultipartFileNullable,
      toJson:
          fromDartListNullableMultipartFileNullableToGraphQLListNullableUploadNullable)
  List<MultipartFile?>? moreImagesSmall;

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [
        id,
        name,
        industry,
        logo,
        logoSmall,
        productPhotos,
        productPhotosSmall,
        moreImages,
        moreImagesSmall,
        $$typename
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$CompaniesData$Query$AllCompaniesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesData$Query extends JsonSerializable with EquatableMixin {
  CompaniesData$Query();

  factory CompaniesData$Query.fromJson(Map<String, dynamic> json) =>
      _$CompaniesData$QueryFromJson(json);

  List<CompaniesData$Query$AllCompanies>? allCompanies;

  @override
  List<Object?> get props => [allCompanies];
  @override
  Map<String, dynamic> toJson() => _$CompaniesData$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompaniesPaginatedDataArguments extends JsonSerializable
    with EquatableMixin {
  CompaniesPaginatedDataArguments({required this.pagination});

  @override
  factory CompaniesPaginatedDataArguments.fromJson(Map<String, dynamic> json) =>
      _$CompaniesPaginatedDataArgumentsFromJson(json);

  late PaginationInput pagination;

  @override
  List<Object?> get props => [pagination];
  @override
  Map<String, dynamic> toJson() =>
      _$CompaniesPaginatedDataArgumentsToJson(this);
}

final COMPANIES_PAGINATED_DATA_QUERY_DOCUMENT = DocumentNode(definitions: [
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

class CompaniesPaginatedDataQuery extends GraphQLQuery<
    CompaniesPaginatedData$Query, CompaniesPaginatedDataArguments> {
  CompaniesPaginatedDataQuery({required this.variables});

  @override
  final DocumentNode document = COMPANIES_PAGINATED_DATA_QUERY_DOCUMENT;

  @override
  final String operationName = 'CompaniesPaginatedData';

  @override
  final CompaniesPaginatedDataArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CompaniesPaginatedData$Query parse(Map<String, dynamic> json) =>
      CompaniesPaginatedData$Query.fromJson(json);
}

final COMPANIES_DATA_QUERY_DOCUMENT = DocumentNode(definitions: [
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
                  name: NameNode(value: 'logo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'logoSmall'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'productPhotos'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'productPhotosSmall'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'moreImages'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'moreImagesSmall'),
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

class CompaniesDataQuery
    extends GraphQLQuery<CompaniesData$Query, JsonSerializable> {
  CompaniesDataQuery();

  @override
  final DocumentNode document = COMPANIES_DATA_QUERY_DOCUMENT;

  @override
  final String operationName = 'CompaniesData';

  @override
  List<Object?> get props => [document, operationName];
  @override
  CompaniesData$Query parse(Map<String, dynamic> json) =>
      CompaniesData$Query.fromJson(json);
}
