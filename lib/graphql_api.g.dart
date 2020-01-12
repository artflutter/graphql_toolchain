// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeData _$EmployeeDataFromJson(Map<String, dynamic> json) {
  return EmployeeData()
    ..employee = json['employee'] == null
        ? null
        : Employee.fromJson(json['employee'] as Map<String, dynamic>);
}

Map<String, dynamic> _$EmployeeDataToJson(EmployeeData instance) =>
    <String, dynamic>{
      'employee': instance.employee?.toJson(),
    };

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return Employee()
    ..firstName = json['firstName'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'id': instance.id,
    };

EmployeeDataArguments _$EmployeeDataArgumentsFromJson(
    Map<String, dynamic> json) {
  return EmployeeDataArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$EmployeeDataArgumentsToJson(
        EmployeeDataArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CompaniesData _$CompaniesDataFromJson(Map<String, dynamic> json) {
  return CompaniesData()
    ..allCompanies = (json['allCompanies'] as List)
        ?.map((e) =>
            e == null ? null : Company.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CompaniesDataToJson(CompaniesData instance) =>
    <String, dynamic>{
      'allCompanies': instance.allCompanies?.map((e) => e?.toJson())?.toList(),
    };

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return Company()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..industry = json['industry'] as String;
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'industry': instance.industry,
    };
