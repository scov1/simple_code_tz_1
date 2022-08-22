// ignore_for_file: prefer_final_fields
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/episodes/episode_events.dart';
import 'package:simple_code_tz_1/bloc/episodes/episode_states.dart';
import 'package:simple_code_tz_1/data/models/episodes.dart';
import 'package:simple_code_tz_1/data/repository/episodes_repository.dart';

part 'parts/episode_fetch.dart';
part 'parts/episode_next_page.dart';

class BlocEpisode extends Bloc<EventBlocEpisode,StateBlocEpisode>{
  final EpisodesRepository episodeRepository;
  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
  BlocEpisode({required this.episodeRepository}) : super(const StateBlocEpisode.initial()){
    on<EventEpisodeFetch>(_fetch);
    on<EventEpisodeNextPage>(_nextPage);
  }
}