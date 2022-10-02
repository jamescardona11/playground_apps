// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chuck_joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChuckJoke _$ChuckJokeFromJson(Map<String, dynamic> json) => ChuckJoke(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      iconUrl: json['iconUrl'] as String?,
      id: json['id'] as String,
      url: json['url'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$ChuckJokeToJson(ChuckJoke instance) => <String, dynamic>{
      'categories': instance.categories,
      'iconUrl': instance.iconUrl,
      'id': instance.id,
      'url': instance.url,
      'value': instance.value,
    };
