// 🌎 Project imports:
import '../simpleloader_bloc.dart';
import '/Models/WeekInfo.dart';
import '/data/week_info_repository.dart';

class WeekInfoLoaderBloc extends SimpleloaderBloc<List<WeekInfo>> {

  @override
  Future<List<WeekInfo>> load(SimpleloaderEvent event) async{
    print('loading weekinfo');
    return await WeekInfoRepository().getContent();
  }
}
