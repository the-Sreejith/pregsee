// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

// 🌎 Project imports:
import '/Models/CourseContent.dart';
import '/Models/LastPlayedVideo.dart';
import '/Models/ProgressModel.dart';
import '/Utils/CategoryUtil.dart';
import '/data/course_repository.dart';
import '/data/progress_repository.dart';

class LessonController extends ChangeNotifier {
  LessonController(
      {List<CourseContent> contents,
      this.courseId,
      this.initialContentId,
      this.progressRepo})
      : assert((contents != null || courseId != null),
            'You must provide a source to play the videos') {
    _contents = contents;
    _initialize();
  }

  List<CourseContent> _contents;
  final String initialContentId;
  final String courseId;
  final ProgressRepository progressRepo;

  ChewieController _chewieController;

  List<Progress> _progressList;

  List<LastPlayedVideo> _lastPlayedVideosList = [];

  int _currentIndex;

  bool _isLoading = true;
  bool _isContentLoading = true;
  bool _isPlaying = true;

  ChewieController get chewieController => _chewieController;

  List<CourseContent> get contents => _contents;

  int get currentPlayingVideoIndex => _currentIndex;

  bool get isLoading => _isLoading;

  bool get isContentLoading => _isContentLoading;

  String get videoId => _contents[_currentIndex].id;

  get progressList => _progressList;

  VideoPlayerValue get _videoValue =>
      _chewieController?.videoPlayerController?.value;

  _initialize() async {
    if (_contents == null && courseId != null) {
      _contents =
          await CourseContentRepository().getCourseContents(courseId, false);
    }
    _isContentLoading = false;
    notifyListeners();
    if (initialContentId != null) {
      _currentIndex =
          _contents.indexWhere((element) => element.id == initialContentId);
    } else {
      _currentIndex = 0;
    }
    _progressList = await progressRepo.getProgress();
    if (_contents[_currentIndex] is Video) {
      final video = _contents[_currentIndex] as Video;
      var _controller = VideoPlayerController.network(video.qualityLinks.sd540);
      await _controller.initialize();
      _controller.addListener(_listener);
      _chewieController = ChewieController(
        videoPlayerController: _controller,
        autoPlay: true,
      );
      int index =
          _progressList.indexWhere((element) => element.lessonId == videoId);
      if (index != -1) {
        Duration startDuration =
            Duration(seconds: _progressList[index].durationSeen);
        await _chewieController.seekTo(startDuration);
      }
    } else {
      // TODO:deal with the quiz
    }
    _isLoading = false;
    notifyListeners();
  }

  _listener() {
    if (_videoValue != null) {
      Video _video = _contents[_currentIndex];
      if (!_videoValue.isPlaying && _isPlaying) {
        _addCurrentVideoToLastPlayed(
          categoryId: courseId,
          lessonId: videoId,
          videoTitle: _video.title,
          value: _videoValue,
        );
        _saveProgress(
          lessonId: videoId,
          value: _videoValue,
        );
        _isPlaying = false;
      }
      if (_videoValue.isPlaying && !_isPlaying) {
        _lastPlayedVideosList
            .removeWhere((element) => element.lessonId == videoId);
        _isPlaying = true;
      }
    }
  }

  _addCurrentVideoToLastPlayed(
      {@required String categoryId,
      @required String lessonId,
      @required String videoTitle,
      @required VideoPlayerValue value}) {
    _lastPlayedVideosList
        .removeWhere((element) => element.lessonId == lessonId);
    if ((value.position.inMilliseconds / value.duration.inMilliseconds) < 0.9) {
      _lastPlayedVideosList.add(
        LastPlayedVideo(
          courseId: categoryId,
          lessonId: lessonId,
          contentTitle: videoTitle,
          category: CategoryUtil.getCategoryFromId(categoryId),
          durationSeen: value.position.inSeconds,
          durationTotal: value.duration.inSeconds,
        ),
      );
    }
  }

  void _saveProgress({
    @required String lessonId,
    @required VideoPlayerValue value,
  }) {
    int index =
        _progressList.indexWhere((element) => element.lessonId == lessonId);
    if (index != -1) {
      if (_progressList[index].durationSeen < value.position.inSeconds &&
          _progressList[index].durationSeen !=
              _progressList[index].durationTotal) {
        _progressList[index] = Progress(
            lessonId, value.position.inSeconds, value.duration.inSeconds);
      } else {
        return;
      }
    } else {
      _progressList.add(Progress(
          lessonId, value.position.inSeconds, value.duration.inSeconds));
    }
    print('progress added to local variable');
  }

  @override
  void dispose() async {
    await _chewieController.pause();
    _chewieController.videoPlayerController.dispose();
    _chewieController.dispose();
    progressRepo.saveProgress(_progressList);
    progressRepo.saveLastPlayedVideos(_lastPlayedVideosList);
    super.dispose();
  }

  changeContent(int index) async {
    if (_currentIndex != index && index <= _contents.length) {
      if (_contents[index] is Video) {
        _chewieController.pause();
        _isLoading = true;
        _currentIndex = index;
        notifyListeners();
        final video = _contents[_currentIndex] as Video;
        _chewieController.videoPlayerController.removeListener(_listener);
        var _controller =
            VideoPlayerController.network(video.qualityLinks.sd540);
        _controller.addListener(_listener);
        await _controller.initialize();
        _chewieController = ChewieController(
          videoPlayerController: _controller,
          autoPlay: true,
        );
        _isLoading = false;
        notifyListeners();
      } else {
        // TODO:Deal with the quiz Content
      }
    }
  }

  changeQuality() {
    // This is a little difficult because provider do not provide through material page route
    // and video full screen is a material page route
    // One workaround to this is to create a custom controller and have a call back to parent widget
    // TODO:change the quality of the current playing video
  }
}
