// ignore_for_file: prefer_final_fields
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/locations/location_events.dart';
import 'package:simple_code_tz_1/bloc/locations/location_states.dart';
import 'package:simple_code_tz_1/data/models/location.dart';
import 'package:simple_code_tz_1/data/repository/location_repository.dart';

part 'parts/location_filter_by_name.dart';
part 'parts/location_next_page.dart';

class BlocLocation extends Bloc<EventBlocLocation, StateBlocLocation> {
  final LocationRepository locationRepository;

  BlocLocation({required this.locationRepository})
      : super(const StateBlocLocation.initial()) {
    on<EventLocationFilterByName>(_filterByName);
    on<EventLocationNextPage>(_nextPage);
  }
  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
  String _name = '';
}
