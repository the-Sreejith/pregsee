// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  String id, userName, comment;
  int likes;
  bool isLiked;
  DateTime commentedOn;

  Comment({this.id, this.userName, this.comment, this.commentedOn});

  Comment.fromData(Map<String, dynamic> data)
      : userName = data['userName'],
        comment = data['comment'],
        likes = data['likes'],
        commentedOn = parseDateTimeFromTimeStamp(data['commentedOn']);

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'comment': comment,
      'commentedOn': commentedOn,
      'likes':likes
    };
  }

  static parseDateTimeFromTimeStamp(Timestamp timestamp) {
    return DateTime.parse(timestamp.toDate().toString());
  }
}
