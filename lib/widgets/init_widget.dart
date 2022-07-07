import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/characters/bloc_character.dart';
import 'package:simple_code_tz_1/bloc/characters/events.dart';
import 'package:simple_code_tz_1/data/repository/api.dart';
import 'package:simple_code_tz_1/data/repository/character_repository.dart';
import 'package:simple_code_tz_1/data/repository/settings_repository.dart';

class InitWidget extends StatelessWidget {
  final Widget child;
  const InitWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => Api(),
        ),
        RepositoryProvider(
          create: (context) => SettingsRepository(),
        ),
        RepositoryProvider(
          create: (context) => CharacterRepository(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocCharacter(
              characterRepository:
                  RepositoryProvider.of<CharacterRepository>(context),
            )..add(
                EventCharacterFilterByName(''),
              ),
          )
        ],
        child: child,
      ),
    );
  }
}
