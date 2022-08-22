part of '../bloc_episode.dart';

extension EpisodeNextPage on BlocEpisode{
  Future<void> _nextPage(  
    EventEpisodeNextPage event,
    Emitter<StateBlocEpisode> emit,
  )async{
    if(_isEndOfData) return;
    if(_isInProgress) return;
    _isInProgress = true;
    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <Episodes>[],
    );
    emit(  
      StateBlocEpisode.data(
        data: currentData,
        isLoading: true
      )
    );
    final result = await episodeRepository.nextPage(_currentPage +1);
    if(result.errorMessage != null){
      emit(  
        StateBlocEpisode.data(
          data: currentData,
          errorMessage: result.errorMessage
          )
      );
      return;
    }
    emit(  
      StateBlocEpisode.data(
        data: [...currentData, ...result.episodesList!]
      )
    );
    _currentPage++;
    _isEndOfData = result.isEndOfData!;
    _isInProgress = false;
  }
}