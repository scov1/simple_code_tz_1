import 'package:simple_code_tz_1/data/models/episodes.dart';
import 'package:simple_code_tz_1/data/repository/api.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class EpisodesRepository{
  final Api api;
  EpisodesRepository({required this.api});

  Future<ResultEpisodesRepository> fetch() => nextPage(1);

  Future<ResultEpisodesRepository> nextPage(int page)async{
    try{
      final result = await api.dio.get('/episode?page=$page');
      final bool isEndOfData = result.data['info']['next'] == null;
      final List json = result.data['results'] as List;
      final episodesList = json.map((json) => Episodes.fromJson(json)).toList();
      return ResultEpisodesRepository(episodesList: episodesList,isEndOfData: isEndOfData);
    }catch(e){
      return ResultEpisodesRepository(errorMessage: S.current.somethingWentWrong);
    }
  }


}

class ResultEpisodesRepository {
  final String? errorMessage;
  final List<Episodes>? episodesList;
  final bool? isEndOfData;

  ResultEpisodesRepository({this.errorMessage, this.episodesList,this.isEndOfData});
}