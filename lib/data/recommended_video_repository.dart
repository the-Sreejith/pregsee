// 🎯 Dart imports:
import 'dart:math';

// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// 🌎 Project imports:
import '../Models/ReccomendedVideo.dart';
import '../Services/FirestorePath.dart';
import '/Utils/CategoryUtil.dart';

class RecommendedVideoRepository {
  static final _firestore = FirebaseFirestore.instance;
  static Future<List<RecommendedVideo>> getRecommendedVideos() async {
    final String uid = FirebaseAuth.instance.currentUser.uid;
    List<RecommendedVideo> _rtnList = [];
    await _firestore
        .doc(FirestorePath.lastPlayed(uid))
        .get()
        .then((value) {
      if (value.data() != null) {
        value
            .data()
            .entries
            .map((e) => _rtnList.add(RecommendedVideo.fromData(e.value)))
            .toList();
      }
    });
    //Adding 2 random data to the courseContent list
    final List<String> categoryIds = ['00', '01', '02', '03', '04'];
    String courseId = _getRandomIdFromList(categoryIds);
    await _firestore
        .doc('courses/001/freeContent/$courseId')
        .get()
        .then((value) {
      var _data = value.data();
      List<String> lessonIdList = [];
      _data.entries.forEach((e) {
        lessonIdList.add(e.key);
      });
      for (var i = 0; i < 2; i++) {
        print(CategoryUtil.getCategoryFromId(courseId));
        final _lessonId = _getRandomIdFromList(lessonIdList);
        _rtnList.add(
          RecommendedVideo(
            courseId: courseId,
            lessonId: _lessonId,
            category: CategoryUtil.getCategoryFromId(courseId),
            contentTitle: _data[_lessonId]['title'],
            durationSeen: 0,
            durationTotal: 1,
          ),
        );
      }

    });
    return _rtnList;
  }

  Future<void> _saveLastPlayedVideos(String uid) async {
    // TODO:save the last played video into the firestore
    _firestore
        .doc(FirestorePath.lastPlayed(uid))
        .set(s)
        .then((value) {
      print('updated');
    }).onError((error, stackTrace) {
      print(error);
    });
  }
}

String _getRandomIdFromList(List<String> list) {
  final random = new Random();
  var i = random.nextInt(list.length);
  return list[i];
}



const s = {
  '01': {
    'courseId': '0',
    'lessonId': '05',
    'categoryName': 'First Trimester',
    'contentTitle':
        'നടത്തം, നൃത്തം, യോഗ ഈ സമയത്ത് ചെയ്യുന്നത് നല്ലതാണോ? സുരക്ഷിതമാണോ?',
    'durationSeen': 20,
    'durationTotal': 60,
  },
  '02': {
    'courseId': '0',
    'lessonId': '05',
    'categoryName': 'First Trimester',
    'contentTitle':
        'നടത്തം, നൃത്തം, യോഗ ഈ സമയത്ത് ചെയ്യുന്നത് നല്ലതാണോ? സുരക്ഷിതമാണോ?',
    'durationSeen': 20,
    'durationTotal': 60,
  },
  '03': {
    'courseId': '0',
    'lessonId': '05',
    'categoryName': 'First Trimester',
    'contentTitle':
        'നടത്തം, നൃത്തം, യോഗ ഈ സമയത്ത് ചെയ്യുന്നത് നല്ലതാണോ? സുരക്ഷിതമാണോ?',
    'durationSeen': 20,
    'durationTotal': 60,
  },
  '04': {
    'courseId': '0',
    'lessonId': '05',
    'categoryName': 'First Trimester',
    'contentTitle':
        'നടത്തം, നൃത്തം, യോഗ ഈ സമയത്ത് ചെയ്യുന്നത് നല്ലതാണോ? സുരക്ഷിതമാണോ?',
    'durationSeen': 20,
    'durationTotal': 60,
  },
};
