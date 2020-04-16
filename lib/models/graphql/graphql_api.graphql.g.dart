// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompaniesData$Query$AllCompanies _$CompaniesData$Query$AllCompaniesFromJson(
    Map<String, dynamic> json) {
  return CompaniesData$Query$AllCompanies()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..industry = json['industry'] as String;
}

Map<String, dynamic> _$CompaniesData$Query$AllCompaniesToJson(
        CompaniesData$Query$AllCompanies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'industry': instance.industry,
    };

CompaniesData$Query _$CompaniesData$QueryFromJson(Map<String, dynamic> json) {
  return CompaniesData$Query()
    ..allCompanies = (json['allCompanies'] as List)
        ?.map((e) => e == null
            ? null
            : CompaniesData$Query$AllCompanies.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CompaniesData$QueryToJson(
        CompaniesData$Query instance) =>
    <String, dynamic>{
      'allCompanies': instance.allCompanies?.map((e) => e?.toJson())?.toList(),
    };
