// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:rive/rive.dart';

class DiamondIncrease extends StatefulWidget {
  final int howMuchIncreased;
  DiamondIncrease(this.howMuchIncreased);
  @override
  _DiamondIncreaseState createState() => _DiamondIncreaseState();
}

class _DiamondIncreaseState extends State<DiamondIncrease> {

  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard _riveArtboard;
  RiveAnimationController _controller;
  @override
  void initState() {
    super.initState();

    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/rive/Diamond_demo.riv').then(
      (data) async {
        // Load the RiveFile from the binary data.
        final file = RiveFile.import(data);
        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artboard = file.mainArtboard;
        // Add a controller to play back a known animation on the main/default
        // artboard.We store a reference to it so we can toggle playback.
        artboard.addController(_controller = SimpleAnimation('Animation 1'));
        setState(() => _riveArtboard = artboard);
        // Listen for changes to the controller to know when an animation has
        // started or stopped playing
        // _riveArtboard.
        _controller.isActiveChanged.addListener(() {
          if (_controller.isActive) {
            print('Animation started playing');
          } else {
            print('Animation stopped playing');
            Future.delayed(Duration(milliseconds: 2500), () {
              if (mounted) {
                print('Time to exit');
                Navigator.pop(context);
              }
            });
            Future.delayed(Duration(milliseconds: 1800),(){
              if (mounted) {
                setState(() => _riveArtboard = artboard);
              }
            });

          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF387E),
      appBar: AppBar(),
      // body:Expanded(
      //         child: Column(
      //     children:[
      //       SizedBox(
      //         height:50,
      //       ),
      //       _riveArtboard == null
      //         ? const SizedBox()
      //         : Rive(artboard: _riveArtboard),
      //       Text('You Earned ${widget.howMuchIncreased} Diamonds')
      //     ]
      //   ),
      // )
      body: Center(
        child: _riveArtboard == null
            ? const SizedBox()
            : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 500,
                    width: 500,
                    child: Rive(artboard: _riveArtboard),
                  ),
                  // SizedBox(height:10),
                  Container(
                    // height: 50,
                    child: Text('You Earned ${widget.howMuchIncreased} Diamonds',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ],
              ),
      ),
    );
  }
}
