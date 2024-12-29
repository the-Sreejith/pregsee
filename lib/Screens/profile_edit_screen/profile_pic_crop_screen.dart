// 🎯 Dart imports:
import 'dart:io';
import 'dart:typed_data';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:crop_your_image/crop_your_image.dart';

class FullScreenCrop extends StatefulWidget {
  const FullScreenCrop(this.image);
  final File image;

  @override
  _FullScreenCropState createState() => _FullScreenCropState();
}

class _FullScreenCropState extends State<FullScreenCrop> {
  final _controller = CropController();
  Uint8List imageData;

  @override
  void initState() {
    super.initState();
    imageData = widget.image.readAsBytesSync();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Crop Image',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cut),
            onPressed: () {
              _controller.crop();
            },
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: Crop(
        controller: _controller,
        image: imageData,
        aspectRatio: 1,
        initialSize: 0.9,
        maskColor: Colors.black.withOpacity(0.7),
        onCropped: (cropped) {
          Navigator.of(context).pop(cropped);
        },
      ),
    );
  }
}
