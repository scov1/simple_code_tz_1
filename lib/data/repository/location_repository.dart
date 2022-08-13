import 'package:simple_code_tz_1/data/models/location.dart';
import 'package:simple_code_tz_1/data/repository/api.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class LocationRepository{
  final Api api;
  LocationRepository({required this.api});

  Future<ResultLocationRepository> filterByNameLocation(String nameLocation) async {
    try {
      final result = await api.dio.get(
        '/location/',
        queryParameters: {
          "name": nameLocation,
        },
      );
      final locationListJson = result.data['results'] as List;
      final locationList = locationListJson
          .map(
            (json) => Location.fromJson(json),
          )
          .toList();
      return ResultLocationRepository(locationList: locationList);
    } catch (e) {
      return ResultLocationRepository(
          errorMessage: S.current.somethingWentWrong);
    }
  }
}


class ResultLocationRepository {
  final String? errorMessage;
  final List<Location>? locationList;

  ResultLocationRepository({this.errorMessage, this.locationList});
}