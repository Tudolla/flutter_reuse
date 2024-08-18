// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      name: json['name'] as String,
      console: json['console'] as String,
      release: (json['release'] as num).toInt(),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'console': instance.console,
    };
