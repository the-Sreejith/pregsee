// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:pregsee/bloc/comment_bloc.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';
import 'package:paginate_firestore/paginate_firestore.dart';

// 🌎 Project imports:
import '../../../Models/CommentModel.dart';
import '../../../Models/UserModel.dart';
import '../../../data/comment_repository.dart';

// 📦 Package imports:

class CommentTab extends StatefulWidget {
  const CommentTab({
    Key key,
    @required this.courseId,
    @required this.videoId,
  }) : super(key: key);

  final String courseId, videoId;

  @override
  _CommentTabState createState() => _CommentTabState();
}

class _CommentTabState extends State<CommentTab> {
  TextEditingController _controller;
  String errorTxt = '';
  FocusNode myFocusNode;

  CommentListBloc commentListBloc;
  CommentRepository commentRepository;

  ScrollController controller = ScrollController();

  @override
  void initState() {
    _controller = TextEditingController();
    myFocusNode = FocusNode();
    commentRepository = CommentRepository(
        courseId: widget.courseId,
        videoId: widget.videoId,
        uid: context.read<UserModel>().uid);
    commentListBloc = CommentListBloc(
        courseId: widget.courseId,
        videoId: widget.videoId,
        uid: context.read<UserModel>().uid);
    commentListBloc.fetchFirstList();
    controller.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    if (controller.offset >= controller.position.maxScrollExtent &&
        !controller.position.outOfRange) {
      print("at the end of list");
      commentListBloc.fetchNextComments();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    myFocusNode.dispose();
    commentListBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Add Comment'),
                    focusNode: myFocusNode,
                    controller: _controller,
                  ),
                ),
              ),
              GestureDetector(
                onTap: _addComment,
                child: Container(
                  child: Icon(Icons.add),
                  padding: const EdgeInsets.all(16),
                ),
              ),
            ],
          ),
          Text(errorTxt),
          Expanded(
            child: PaginateFirestore(
              itemBuilder: (index, context, documentSnapshot) {
                final data = documentSnapshot.data();
                Comment _comment = Comment.fromData(data);
                _comment.isLiked =
                    isliked(commentRepository.likedComments, _comment.id);
                return CommentCard(
                  comment: _comment,
                  like: () {
                    print('Liking comment method called in comment tab');
                    commentRepository.likeComment(_comment.id);
                  },
                  disLike: () {
                    print('Disliking comment method called in comment tab');
                    commentRepository.dislikeComment(_comment.id);
                  },
                );
              },
              query: commentRepository.getQuery(),
              itemBuilderType: PaginateBuilderType.listView,
              // isLive: true,
            ),
          ),
        ],
      ),
    );
  }

  _addComment() {
    print('debug:adding comment');
    if (_controller.text != null && _controller.text != '') {
      Comment comment = Comment(
          userName: context.read<UserModel>().fullName,
          comment: _controller.text.trim(),
          commentedOn: DateTime.now());
      commentListBloc.addComment(comment);
      _controller.text = '';
      myFocusNode.unfocus();
      // paginateNotifier.refreshed = true;
    }
  }
}

class CommentCard extends StatefulWidget {
  final Comment comment;
  final VoidCallback like, disLike;
  CommentCard({this.comment, this.like, this.disLike});

  @override
  _CommentCardState createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  Comment _comment;

  @override
  void initState() {
    super.initState();
    _comment = widget.comment;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 6),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: _comment.userName + ' . ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'salsa',
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: _getWhen(),
                  style: TextStyle(
                    fontFamily: 'salsa',
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          Text(_comment.comment),
          Row(
            children: [
              Text('${_comment.likes ?? 0} Likes'),
              _comment.isLiked
                  ? IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        widget.disLike();
                        setState(() {
                          _comment.isLiked = false;
                          _comment.likes = _comment.likes - 1;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        widget.like();
                        setState(
                          () {
                            _comment.isLiked = true;
                            _comment.likes = _comment.likes + 1;
                          },
                        );
                      },
                    )
            ],
          )
        ],
      ),
    );
  }

  String _getWhen() {
    final dateTime = DateTime.now().difference(_comment.commentedOn);
    if (dateTime.inDays >= 365) {
      return '${(dateTime.inDays ~/ 365)} Years ago';
    } else if (dateTime.inDays >= 30) {
      return '${dateTime.inDays ~/ 30} Months ago';
    } else if (dateTime.inDays > 0) {
      return '${dateTime.inDays} Days ago';
    } else if (dateTime.inHours > 0) {
      return '${dateTime.inHours} Hours ago';
    } else if (dateTime.inMinutes > 0) {
      return '${dateTime.inMinutes} Min ago';
    } else {
      return 'Now';
    }
  }
}

bool isliked(likedComments, String id) {
  if (likedComments == null) {
    return false;
  } else if (likedComments.data()[id] != null) {
    return true;
  } else {
    return false;
  }
}
