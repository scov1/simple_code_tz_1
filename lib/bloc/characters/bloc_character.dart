import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/characters/events.dart';
import 'package:simple_code_tz_1/bloc/characters/states.dart';
import 'package:simple_code_tz_1/data/repository/character_repository.dart';

class BlocCharacter extends Bloc<EventBlocCharacter, StateBlocCharacter> {
  final CharacterRepository characterRepository;

  BlocCharacter({required this.characterRepository})
      : super(StateCharacterInitial()) {
    on<EventCharacterFilterByName>(
      (event, emit) async {
        emit(
          StateCharacterLoading(),
        );
        final result = await characterRepository.filterByName(event.name);
        if (result.errorMessage != null) {
          emit(StateCharacterError(result.errorMessage!));
          return;
        }
        emit(
          StateCharacterData(data: result.characterList!),
        );
      },
    );
  }
}
