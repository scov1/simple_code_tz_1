import 'package:simple_code_tz_1/data/models/character.dart';
import 'package:simple_code_tz_1/data/repository/api.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class CharacterRepository {
  final Api api;
  CharacterRepository({required this.api});

  Future<ResultCharacterRepository> filterByName(String name) async {
    try {
      final result = await api.dio.get(
        '/character/',
        queryParameters: {
          "name": name,
        },
      );
      final characterListJson = result.data['results'] as List;
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
