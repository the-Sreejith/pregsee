// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';

class CustomSwitch extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key key, this.initialValue, this.onChanged}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  Animation _colorAnimation;
  AnimationController _animationController;
  bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    _circleAnimation = AlignmentTween(
      begin: widget.initialValue ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.initialValue ? Alignment.centerLeft : Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );
    _colorAnimation = ColorTween(
      begin: widget.initialValue ? AppColors.secoundry : AppColors.gray,
      end: widget.initialValue ? AppColors.gray : AppColors.secoundry,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.onChanged(!_value);
            _value = !_value;
          },
          child: Container(
            width: 40.0,
            height: 24.0,
            child: Stack(
              children: [
                Container(
                  height: 18,
                  width: 40,
                  margin: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(width: 2),
                    color: _colorAnimation.value,
                  ),
                ),
                Container(
                  alignment: _circleAnimation.value,
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(width: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
