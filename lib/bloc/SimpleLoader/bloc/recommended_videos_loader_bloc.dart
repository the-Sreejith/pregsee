// 🌎 Project imports:
import '../simpleloader_bloc.dart';
import '/Models/ReccomendedVideo.dart';
import '/data/recommended_video_repository.dart';

class RecommendedVideosLoaderBloc extends SimpleloaderBloc<List<RecommendedVideo>> {

  @override
  Future<List<RecommendedVideo>> load(SimpleloaderEvent event) async{
    print('loading recommended videos');
    return await RecommendedVideoRepository.getRecommendedVideos();
  } 
}
