// 🎯 Dart imports:
import 'dart:developer';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_spinkit/flutter_spinkit.dart';

// 🌎 Project imports:
import '../Const/AppConst.dart';

class ImageWidget extends StatelessWidget {
  final String imgUrl;
  final double width, height;
  const ImageWidget(this.imgUrl, {this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imgUrl,
      height: height,
      width: width ?? double.infinity,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null)
          return child;
        return Container(
          height: height,
          width: width ?? double.infinity,
          child: Center(
            child: const SpinKitThreeBounce(color: AppColors.primary),
          ),
        );
      },
      errorBuilder: (context, object, stackTrace) {
        log(object.toString());
        return _ImageError(
            height:height,
            width:width??double.infinity,
          );
      },
    );
  }
}
class _ImageError extends StatelessWidget {
  final double width, height;
  const _ImageError({this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.warning_amber_rounded,size: 48,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Uh Oh',style: TextStyle(color:Colors.black45,fontWeight: FontWeight.w700,fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Can\'t get the picture right now\n keep calm and try again',style: TextStyle(color:Colors.black45,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
          ),
        ]
      ),
    );
  }
}
