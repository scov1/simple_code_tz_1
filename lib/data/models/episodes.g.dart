// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Episodes _$$_EpisodesFromJson(Map<String, dynamic> json) => _$_Episodes(
      name: json['name'] as String?,
      airDate: json['air_date'] as String?,
      episode: json['episode'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_EpisodesToJson(_$_Episodes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'air_date': instance.airDate,
      'episode': instance.episode,
      'created': instance.created?.toIso8601String(),
    };
