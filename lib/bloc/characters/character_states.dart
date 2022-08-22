import 'package:flutter/foundation.dart';
import 'package:simple_code_tz_1/data/models/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_states.freezed.dart';

@freezed
class StateBlocCharacter with _$StateBlocCharacter{
  const factory StateBlocCharacter.initial() = StateCharacterInitial;
  const factory StateBlocCharacter.loading() = StateCharacterLoading;
  const factory StateBlocCharacter.data({required List<Character> data}) = StateCharacterData;
  const factory StateBlocCharacter.error(String error) = StateCharacterError; 
}