import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_code_tz_1/data/models/location.dart';

part 'location_states.freezed.dart';


@freezed
class StateBlocLocation with _$StateBlocLocation{
  const factory StateBlocLocation.initial() = StateLocationInitial;
  const factory StateBlocLocation.loading() = StateLocationLoading;
  const factory StateBlocLocation.error(String error) = StateLocationError;
  const factory StateBlocLocation.data({
    required List<Location> data,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = StateLocationData;
}