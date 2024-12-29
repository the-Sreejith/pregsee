// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum WhichOption { left, right }

class OptionSwitch extends StatefulWidget {
  final ValueChanged<WhichOption> onChanged;
  final bool startAtRight;
  final String left, right;
  final double height, width;
  final Color color;

  OptionSwitch({this.onChanged, this.left, this.right, this.color,this.width,this.height,this.startAtRight=false});

  @override
  _OptionSwitchState createState() => _OptionSwitchState();
}

class _OptionSwitchState extends State<OptionSwitch>
    with TickerProviderStateMixin {
  Duration _duration = Duration(milliseconds: 370);
  Animation<Alignment> _animation;
  AnimationController _animationController;
  bool startAtRight;

  @override
  void initState() {
    super.initState();
    startAtRight = widget.startAtRight;
    _animationController =
        AnimationController(vsync: this, duration: _duration);
    _animation =
        AlignmentTween(begin: widget.startAtRight?Alignment.centerRight:Alignment.centerLeft, end: widget.startAtRight?Alignment.centerLeft:Alignment.centerRight)
            .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Center(
            child: Container(
              width: double.infinity,
              height: 20,
              decoration: BoxDecoration(
                color: widget.color.withOpacity(.6) ?? Colors.blue.withOpacity(.2),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Color(0xff6d1c47),
                //     blurRadius: 15,
                //     offset: Offset(0, 8),
                //   )
                // ],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: _animation.value,
                    child: Container(
                      width: widget.width/2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        // shape: BoxShape.rectangle,
                        color: widget.color ?? Colors.blue,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (!startAtRight) {
                                if (_animationController.isCompleted) {
                                  _animationController.reverse();
                                  widget.onChanged(WhichOption.left);
                                }
                              }else{
                                if (!_animationController.isCompleted) {
                                  _animationController.forward();
                                  widget.onChanged(WhichOption.left);
                                }
                              }
                            });
                          },
                          child: Center(
                              child: Text(
                            widget.left,
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (!startAtRight) {
                                if (!_animationController.isCompleted) {
                                  _animationController.forward();
                                  widget.onChanged(WhichOption.right);
                                }
                              }else{
                                if (_animationController.isCompleted) {
                                  _animationController.reverse();
                                  widget.onChanged(WhichOption.right);
                                }
                              }
                            });
                          },
                          child: Center(
                            child: Text(
                              widget.right,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
