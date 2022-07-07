import 'package:simple_code_tz_1/data/models/character.dart';

abstract class StateBlocCharacter {}

class StateCharacterInitial extends StateBlocCharacter {}

class StateCharacterLoading extends StateBlocCharacter {}

class StateCharacterData extends StateBlocCharacter {
  final List<Character> data;

  StateCharacterData({required this.data});
}

class StateCharacterError extends StateBlocCharacter {
  final String error;

  StateCharacterError(this.error);
}
