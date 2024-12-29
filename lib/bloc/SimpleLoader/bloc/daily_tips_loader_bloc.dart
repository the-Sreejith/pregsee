// 🌎 Project imports:
import '../simpleloader_bloc.dart';
import '/Models/DailyTips.dart';
import '/data/daily_tips_repository.dart';

class DailyTipsLoaderBloc extends SimpleloaderBloc<List<DailyTips>> {

  @override
  Future<List<DailyTips>> load(SimpleloaderEvent event) async{
    print('loading recommended videos');
    return await DailyTipsRepository().getRandomDailyTip();
  } 
}
