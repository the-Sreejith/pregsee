// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';

// 🌎 Project imports:
import '../Models/ProgressModel.dart';
import '/Models/LastPlayedVideo.dart';
import '/Services/FirestorePath.dart';

class ProgressRepository {
  final String uid;
  final String courseId;
  ProgressRepository({@required this.uid,@required this.courseId});
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Progress>> getProgress() async {
    DocumentSnapshot doc = await _firestore.doc(FirestorePath.progress(uid, courseId)).get();
    if (doc.exists) {
      return doc
          .data()
          .entries
          .map((e) => Progress(
              e.key, e.value['seenDuration'], e.value['totalDuration']))
          .toList();
    } else {
      return [];
    }
  }

  saveProgress(List<Progress> progress) async {
    if (progress == null) {
      print('Progress is empty');
      return;
    }
    print('progress id ${progress.first.lessonId}');
    print('progress duration ${progress.first.durationSeen}');
    print('progress total ${progress.first.durationTotal}');
    Map<String, dynamic> setValue = Map.fromIterable(progress,
        key: (e) => e.lessonId,
        value: (e) =>
            {'seenDuration': e.durationSeen, 'totalDuration': e.durationTotal});
    await _firestore.doc(FirestorePath.progress(uid, courseId))
        .set(setValue)
        .then((value) => print("Progress added  " + setValue.toString()))
        .catchError((error) => print("Failed to add progress: $error"));
  }

  saveLastPlayedVideos(List<LastPlayedVideo> lastPlayedVideoList) {
    Map<String,dynamic> setValue = Map.fromIterable(lastPlayedVideoList,
    key: (e)=>e.lessonId,value: (e)=>e.toJson(),);
    _firestore.doc(FirestorePath.lastPlayed(uid)).set(setValue).then((value) => print(setValue));
  }
}
