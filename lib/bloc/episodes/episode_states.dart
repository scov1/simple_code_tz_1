import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_code_tz_1/data/models/episodes.dart';

part 'episode_states.freezed.dart';

@freezed 
class StateBlocEpisode with _$StateBlocEpisode{
  const factory StateBlocEpisode.initial() = StateEpisodeInitial;
  const factory StateBlocEpisode.loading() = StateEpisodeLoading;
  const factory StateBlocEpisode.error(String error) = StateEpisodeError;
  const factory StateBlocEpisode.data({
    required List<Episodes> data,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = StateEpisodeData;
}