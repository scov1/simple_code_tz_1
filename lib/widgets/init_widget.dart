import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/characters/bloc_character.dart';
import 'package:simple_code_tz_1/bloc/characters/character_events.dart';
import 'package:simple_code_tz_1/bloc/episodes/bloc_episode.dart';
import 'package:simple_code_tz_1/bloc/episodes/episode_events.dart';
import 'package:simple_code_tz_1/bloc/locations/bloc_location.dart';
import 'package:simple_code_tz_1/bloc/locations/location_events.dart';
import 'package:simple_code_tz_1/data/repository/api.dart';
import 'package:simple_code_tz_1/data/repository/character_repository.dart';
import 'package:simple_code_tz_1/data/repository/episodes_repository.dart';
import 'package:simple_code_tz_1/data/repository/location_repository.dart';
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
        RepositoryProvider(
          create: (context) => LocationRepository(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
        RepositoryProvider(
          create: (context) => EpisodesRepository(
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
          ),
          BlocProvider(
            create: (context) => BlocLocation(
              locationRepository:
                  RepositoryProvider.of<LocationRepository>(context),
            )..add(
                EventLocationFilterByName(''),
              ),
          ),
          BlocProvider(
            create: (context) => BlocEpisode(
              episodeRepository:
                  RepositoryProvider.of<EpisodesRepository>(context),
            )..add(
                EventEpisodeFetch(),
            ),
          )
        ],
        child: child,
      ),
    );
  }
}
