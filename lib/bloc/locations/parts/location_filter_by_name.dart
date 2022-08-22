part of '../bloc_location.dart';

extension LocationFilterByName on BlocLocation {
  Future<void> _filterByName(
    EventLocationFilterByName event,
    Emitter<StateBlocLocation> emit,
  ) async {
    emit(const StateBlocLocation.loading());
    final result = await locationRepository.filterByNameLocation(event.name);
    _isEndOfData = false;
    if (result.errorMessage != null) {
      emit(
        StateBlocLocation.error(result.errorMessage!),
      );
      return;
    }
    emit(
      StateBlocLocation.data(data: result.locationList!),
    );
    _currentPage = 1;
    _isEndOfData = false;
    _isInProgress = false;
    _name = event.name;
  }
}
