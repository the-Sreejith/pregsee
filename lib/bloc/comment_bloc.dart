import 'dart:async';
import 'dart:io';

import 'package:pregsee/Models/CommentModel.dart';
import 'package:pregsee/data/comment_repository.dart';
import 'package:rxdart/rxdart.dart';

class CommentListBloc {

  bool showIndicator = false;
  List<Comment> documentList;

  BehaviorSubject<List<Comment>> commentController;

  BehaviorSubject<bool> showIndicatorController;

  CommentRepository commentRepository;

  CommentListBloc({String courseId, String videoId, String uid}) {
    commentController = BehaviorSubject<List<Comment>>();
    showIndicatorController = BehaviorSubject<bool>();
    commentRepository = CommentRepository(courseId: courseId,videoId: videoId,uid: uid);
  }

  Stream get getShowIndicatorStream => showIndicatorController.stream;

  Stream<List<Comment>> get commentStream => commentController.stream;

/*This method will automatically fetch first 10 elements from the document list */
  Future fetchFirstList() async {
    try {
      documentList = await commentRepository.fetchFirstList();
      print(documentList);
      commentController.sink.add(documentList);
      try {
        if (documentList.length == 0) {
          commentController.sink.addError("No Data Available");
        }
      } catch (e) {}
    } on SocketException {
      commentController.sink.addError(SocketException("No Internet Connection"));
    } catch (e) {
      print(e.toString());
      commentController.sink.addError(e);
    }
  }

/*This will automatically fetch the next 10 elements from the list*/
  fetchNextComments() async {
    try {
      updateIndicator(true);
      List<Comment> newDocumentList =
          await commentRepository.fetchNextList(documentList);
      documentList.addAll(newDocumentList);
      commentController.sink.add(documentList);
      try {
        if (documentList.length == 0) {
          commentController.sink.addError("No Data Available");
          updateIndicator(false);
        }
      } catch (e) {
        updateIndicator(false);
      }
    } on SocketException {
      commentController.sink.addError(SocketException("No Internet Connection"));
      updateIndicator(false);
    } catch (e) {
      updateIndicator(false);
      print(e.toString());
      commentController.sink.addError(e);
    }
  }

/*For updating the indicator below every list and paginate*/
  updateIndicator(bool value) async {
    showIndicator = value;
    showIndicatorController.sink.add(value);
  }

  addComment(Comment comment) async {
    commentRepository.addComment(comment);
  }
  likeComment(Comment comment) async {
    commentRepository.addComment(comment);
  }
  dislikeComment(Comment comment) async {
    commentRepository.addComment(comment);
  }

  void dispose() {
    commentController.close();
    showIndicatorController.close();
  }
}