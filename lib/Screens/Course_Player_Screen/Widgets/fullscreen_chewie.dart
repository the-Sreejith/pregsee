// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:chewie/chewie.dart';
import 'package:orientation/orientation.dart';

class FullScreenChewie extends StatefulWidget {
  final ChewieController controller;
  const FullScreenChewie({this.controller, key}) : super(key: key);

  @override
  _FullScreenChewieState createState() => _FullScreenChewieState();
}

class _FullScreenChewieState extends State<FullScreenChewie> {
  StreamSubscription orientationSubscription;

  @override
  void initState() {
    super.initState();
    orientationSubscription = OrientationPlugin.onOrientationChange
        .distinct((previous, next) => previous == next)
        .listen(fullscreenOnLandscapeMode);
  }

  fullscreenOnLandscapeMode(DeviceOrientation orientation) async {
    if (orientation == DeviceOrientation.portraitUp) {
      print('portrait');
      if (widget.controller != null && widget.controller.isFullScreen) {
        widget.controller.exitFullScreen();
      }
    }
    if (orientation == DeviceOrientation.landscapeLeft ||
        orientation == DeviceOrientation.landscapeRight) {
      print('landscape');
      if (widget.controller != null && !widget.controller.isFullScreen) {
        widget.controller.enterFullScreen();
      }
    }
  }

  @override
  void dispose() {
    orientationSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Chewie(
        controller: widget.controller,
      ),
    );
  }
}
