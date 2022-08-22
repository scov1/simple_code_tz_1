import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.freezed.dart';
part 'episodes.g.dart';

@freezed
class Episodes with _$Episodes{
  const factory Episodes({
    String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'air_date')
    String? airDate,
    String? episode,
    DateTime? created,

  }) = _Episodes;

  factory Episodes.fromJson(Map<String,dynamic> json) => _$EpisodesFromJson(json);

}