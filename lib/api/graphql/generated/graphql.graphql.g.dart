// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login$Mutation$LoggedInUser _$Login$Mutation$LoggedInUserFromJson(
    Map<String, dynamic> json) {
  return Login$Mutation$LoggedInUser()
    ..uuid = json['uuid'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$Login$Mutation$LoggedInUserToJson(
        Login$Mutation$LoggedInUser instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
    };

Login$Mutation _$Login$MutationFromJson(Map<String, dynamic> json) {
  return Login$Mutation()
    ..login = Login$Mutation$LoggedInUser.fromJson(
        json['login'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Login$MutationToJson(Login$Mutation instance) =>
    <String, dynamic>{
      'login': instance.login.toJson(),
    };

LoginArguments _$LoginArgumentsFromJson(Map<String, dynamic> json) {
  return LoginArguments(
    identifier: json['identifier'] as String?,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$LoginArgumentsToJson(LoginArguments instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'password': instance.password,
    };
