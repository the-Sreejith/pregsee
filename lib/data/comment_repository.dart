// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:pregsee/Services/FirestorePath.dart';

// 🌎 Project imports:
import '../Models/CommentModel.dart';

class CommentRepository {
  final String courseId, videoId, uid;
  CollectionReference commentsCollection, likedCommentsRef;
  // DocumentReference likedCommentsRef;
  DocumentSnapshot likedComments;
  CommentRepository({@required this.courseId, @required this.videoId, this.uid})
      : assert(courseId != null,
            'You must provide a courseId to get the comments') {
    _initialize();
  }

  _initialize() async {
    commentsCollection = FirebaseFirestore.instance
        .collection('courses/001/comments/$courseId/$videoId');
    likedCommentsRef =
        FirebaseFirestore.instance.collection('users/$uid/likedComments');
    FirebaseFirestore.instance
        .doc('users/$uid/likedComments/${courseId}_$videoId')
        .get()
        .then((value) {
      if (value.exists) {
        likedComments = value;
      }
    }).catchError((e) {
      print('Faliled to get liked comments:$e');
    });
    print('liked comments downloaded from the cloud');
  }

  Future<List<Comment>> fetchFirstList() async {
    List<Comment> rtnList = [];
    (await FirebaseFirestore.instance
            .collection(FirestorePath.comments(courseId, videoId))
            .orderBy("likes")
            .limit(10)
            .get())
        .docs
        .forEach((element) {
      rtnList.add(Comment.fromData(element.data()));
    });
    return rtnList;
  }

  Future<List<Comment>> fetchNextList(List<Comment> commentList) async {
    List<Comment> rtnList = [];
    (await FirebaseFirestore.instance
            .collection(FirestorePath.comments(courseId, videoId))
            .orderBy("likes")
            .startAfter([]) //FIXME
            .limit(10)
            .get())
        .docs
        .forEach((element) {
      rtnList.add(Comment.fromData(element.data()));
    });
    return rtnList;
  }

  Query getQuery() {
    return commentsCollection.orderBy('likes', descending: true);
  }

  Future addComment(Comment comment) async {
    return await commentsCollection
        .doc()
        .set({
          'userName': comment.userName,
          'comment': comment.comment,
          'commentedOn': comment.commentedOn,
          'likes': 0
        })
        .then((value) => print("Commented added  " + comment.toString()))
        .catchError((error) => print("Failed to add comment: $error"));
  }

  Future likeComment(String commentId) async {
    print('liking comment');
    try {
      likedCommentsRef
        .doc('${courseId}_$videoId')
        .set({commentId: DateTime.now()}, SetOptions(merge: true));
    } catch (e) {
      print(e);
    }
    // likedComments.
    int likes;
    await commentsCollection
        .doc(commentId)
        .get()
        .then((value) => likes = value.data()['likes'])
        .catchError((error) => print('something went wrong : $error'));
    if (likes != null) {
      commentsCollection.doc(commentId).update({'likes': likes + 1});
    } else {
      commentsCollection
          .doc(commentId)
          .set({'likes': 1}, SetOptions(merge: true));
    }
  }

  Future dislikeComment(String commentId) async {
    print('disliking comment');
    likedCommentsRef
        .doc('${courseId}_$videoId')
        .update({commentId: FieldValue.delete()});
    int likes;
    await commentsCollection.doc(commentId).get().then((value) {
      likes = value.data()['likes'];
    });
    if (likes != null && likes > 0) {
      commentsCollection.doc(commentId).update({'likes': likes - 1});
    } else {
      print('oops!!  something went wromg');
    }
  }
}
