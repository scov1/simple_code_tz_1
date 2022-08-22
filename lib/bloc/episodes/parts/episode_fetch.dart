part of '../bloc_episode.dart';

extension EpisodeFetch on BlocEpisode{
  Future<void> _fetch( 
    EventEpisodeFetch event,
    Emitter<StateBlocEpisode> emit,
  )async{
    emit(const StateBlocEpisode.loading());
    final result = await episodeRepository.fetch();
    _isEndOfData = false;
    if(result.errorMessage != null){
      emit(StateBlocEpisode.error(result.errorMessage!));
      return;
    }
    emit(StateBlocEpisode.data(data: result.episodesList!));
    _currentPage = 1;
  }
}