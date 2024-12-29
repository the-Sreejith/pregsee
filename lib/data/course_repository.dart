// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';

// 🌎 Project imports:
import '../Models/CourseContent.dart';
import '../Models/CourseModel.dart';

class CourseContentRepository {
  // final String courseId;
  // CourseContentRepository(this.courseId);

  Future<List<CourseContent>> getCourseContents(
      courseId, bool isPremium) async {
    DocumentReference courseDocumentReference;
    if (isPremium) {
      courseDocumentReference = FirebaseFirestore.instance
          .collection('courses/001/premiumContent')
          .doc('$courseId');
    } else {
      courseDocumentReference = FirebaseFirestore.instance
          .collection('courses/001/freeContent')
          .doc('$courseId');
    }
    List<CourseContent> courseContent = [];
    await courseDocumentReference.get().then((value) {
      if (value.data() != null) {
        value
            .data()
            .entries
            .map((e) => e.value['type'] == 'video'
                ? courseContent.add(Video.fromData(e.value, e.key))
                : courseContent.add(Quiz.fromData(e.value, e.key)))
            .toList();
      }
    });
    courseContent.sort((a, b) => int.parse(a.id).compareTo(int.parse(b.id)));
    return courseContent;
  }

  Future<List<CourseModel>> getCourses() async {
    final DocumentReference courseDoc =
        FirebaseFirestore.instance.collection('courses').doc('001');
    List<CourseModel> courseList = [];
    final docSnapshot = await courseDoc.get();
    docSnapshot
        .data()['courses']
        .forEach((e) => courseList.add(CourseModel.fromData(e)));
    return courseList;
  }
}
