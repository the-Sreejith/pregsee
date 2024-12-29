// 🌎 Project imports:
import '../simpleloader_bloc.dart';
import '/Models/CourseModel.dart';
import '/data/course_repository.dart';

class CourseLoaderBloc extends SimpleloaderBloc<List<CourseModel>> {

  @override
  Future<List<CourseModel>> load(SimpleloaderEvent event) async{
    print('loading recommended videos');
    return await CourseContentRepository().getCourses();
  } 
}
