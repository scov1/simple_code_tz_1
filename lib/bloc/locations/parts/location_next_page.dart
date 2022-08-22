part of '../bloc_location.dart';

extension LocationNextPage on BlocLocation{
  Future<void> _nextPage( 
    EventLocationNextPage event,
    Emitter<StateBlocLocation> emit,
  )async{
    if(_isEndOfData) return;
    if(_isInProgress) return;
    _isInProgress = true;
    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <Location>[],
    );
    emit(  
      StateBlocLocation.data(
        data: currentData,
        isLoading: true
      )
    );
    final result = await locationRepository.nextPage(_currentPage +1,_name);
    if(result.errorMessage != null){
      emit( 
        StateBlocLocation.data(
          data: currentData,
          errorMessage: result.errorMessage!
        )
      );
      return;
    }
    emit(
      StateBlocLocation.data(
        data: [...currentData, ...result.locationList!]
      )
    );
    _currentPage++;
    _isEndOfData = result.isEndOfData!;
    _isInProgress = false;
  }
}