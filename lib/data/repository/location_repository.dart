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
      final List locationListJson = result.data['results'] ?? [];
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


  Future<ResultLocationRepository> nextPage(int page,String name)async{
    try{
      final result = await api.dio.get('/location?page=$page&name=$name');
      final bool isEndOfData = result.data['info']['next'] == null;
      final List json = result.data['results'] ?? [];
      final locationList = json.map((json) => Location.fromJson(json)).toList();
      return ResultLocationRepository(locationList: locationList,isEndOfData: isEndOfData);
    }catch(e){
      return ResultLocationRepository(errorMessage: S.current.somethingWentWrong);
    }
  }
}


class ResultLocationRepository {
  final String? errorMessage;
  final List<Location>? locationList;
  final bool? isEndOfData;

  ResultLocationRepository({this.errorMessage, this.locationList,this.isEndOfData});
}