import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/characters/character_events.dart';
import 'package:simple_code_tz_1/bloc/characters/character_states.dart';
import 'package:simple_code_tz_1/data/repository/character_repository.dart';

class BlocCharacter extends Bloc<EventBlocCharacter, StateBlocCharacter> {
  final CharacterRepository characterRepository;

  BlocCharacter({required this.characterRepository})
      : super(const StateBlocCharacter.initial()) {
    on<EventCharacterFilterByName>(
      (event, emit) async {
        emit(
          const StateBlocCharacter.loading(),
        );
        final result = await characterRepository.filterByName(event.name);
        if (result.errorMessage != null) {
          emit(
            StateBlocCharacter.error(result.errorMessage!),
          );
          return;
        }
        emit(
          StateBlocCharacter.data(data: result.characterList!),
        );
      },
    );
  }
}
