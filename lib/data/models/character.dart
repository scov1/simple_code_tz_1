import 'package:freezed_annotation/freezed_annotation.dart';
import 'location.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character{
  const factory Character({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    Location? origin,
    Location? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) = _Character;
 

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
   
}
