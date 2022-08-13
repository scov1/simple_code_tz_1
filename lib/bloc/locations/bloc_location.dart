import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/locations/location_events.dart';
import 'package:simple_code_tz_1/bloc/locations/location_states.dart';
import 'package:simple_code_tz_1/data/repository/location_repository.dart';

class BlocLocation extends Bloc<EventLocationFilterByName,StateBlocLocation>{
  final LocationRepository locationRepository;

  BlocLocation({required this.locationRepository}) : super(const StateBlocLocation.initial()){
    on<EventLocationFilterByName>(
      (event,emit) async{
        emit(
          const StateBlocLocation.loading()
        );
        final result = await locationRepository.filterByNameLocation(event.name);
        if (result.errorMessage != null) {
          emit(
            StateBlocLocation.error(result.errorMessage!),
          );
          return;
        }
        emit(
          StateBlocLocation.data(data: result.locationList!),
        );
      }
    );
  }
}