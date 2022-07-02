import 'dart:convert';
import 'package:simple_code_tz_1/data/models/character.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:http/http.dart' as http;

class CharacterRepository {
  Future<ResultCharacterRepository> getAllCharacters() async {
    try {
      String api = 'https://rickandmortyapi.com/api/character';
      final response = await http.get(Uri.parse(api));
      final data = jsonDecode(response.body);
      final characterListJson = data['results'] as List;
      final characterList = characterListJson
          .map(
            (json) => Character.fromJson(json),
          )
          .toList();
      return ResultCharacterRepository(characterList: characterList);
    } catch (e) {
      return ResultCharacterRepository(
          errorMessage: S.current.somethingWentWrong);
    }
  }
}

class ResultCharacterRepository {
  final String? errorMessage;
  final List<Character>? characterList;

  ResultCharacterRepository({this.errorMessage, this.characterList});
}
