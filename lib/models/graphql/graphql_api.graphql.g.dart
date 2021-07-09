// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompaniesPaginatedData$Query$AllCompaniesPaginated
    _$CompaniesPaginatedData$Query$AllCompaniesPaginatedFromJson(
        Map<String, dynamic> json) {
  return CompaniesPaginatedData$Query$AllCompaniesPaginated()
    ..id = json['id'] as String
    ..name = json['name'] as String?
    ..industry = json['industry'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$CompaniesPaginatedData$Query$AllCompaniesPaginatedToJson(
        CompaniesPaginatedData$Query$AllCompaniesPaginated instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'industry': instance.industry,
      '__typename': instance.$$typename,
    };

CompaniesPaginatedData$Query _$CompaniesPaginatedData$QueryFromJson(
    Map<String, dynamic> json) {
  return CompaniesPaginatedData$Query()
    ..allCompaniesPaginated = (json['allCompaniesPaginated'] as List<dynamic>?)
        ?.map((e) =>
            CompaniesPaginatedData$Query$AllCompaniesPaginated.fromJson(
                e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CompaniesPaginatedData$QueryToJson(
        CompaniesPaginatedData$Query instance) =>
    <String, dynamic>{
      'allCompaniesPaginated':
          instance.allCompaniesPaginated?.map((e) => e.toJson()).toList(),
    };

PaginationInput _$PaginationInputFromJson(Map<String, dynamic> json) {
  return PaginationInput(
    limit: json['limit'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$PaginationInputToJson(PaginationInput instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };

CompaniesData$Query$AllCompanies _$CompaniesData$Query$AllCompaniesFromJson(
    Map<String, dynamic> json) {
  return CompaniesData$Query$AllCompanies()
    ..id = json['id'] as String
    ..name = json['name'] as String?
    ..industry = json['industry'] as String?
    ..$$typename = json['__typename'] as String?;
}

Map<String, dynamic> _$CompaniesData$Query$AllCompaniesToJson(
        CompaniesData$Query$AllCompanies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'industry': instance.industry,
      '__typename': instance.$$typename,
    };

CompaniesData$Query _$CompaniesData$QueryFromJson(Map<String, dynamic> json) {
  return CompaniesData$Query()
    ..allCompanies = (json['allCompanies'] as List<dynamic>?)
        ?.map((e) => CompaniesData$Query$AllCompanies.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CompaniesData$QueryToJson(
        CompaniesData$Query instance) =>
    <String, dynamic>{
      'allCompanies': instance.allCompanies?.map((e) => e.toJson()).toList(),
    };

CompaniesPaginatedDataArguments _$CompaniesPaginatedDataArgumentsFromJson(
    Map<String, dynamic> json) {
  return CompaniesPaginatedDataArguments(
    pagination:
        PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CompaniesPaginatedDataArgumentsToJson(
        CompaniesPaginatedDataArguments instance) =>
    <String, dynamic>{
      'pagination': instance.pagination.toJson(),
    };
