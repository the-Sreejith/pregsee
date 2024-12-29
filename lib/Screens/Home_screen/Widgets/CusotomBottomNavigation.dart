// 🎯 Dart imports:
import 'dart:math' as math;

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// const double _kActiveFontSize = 14.0;
const double _kBottomMargin = 8.0;

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({
    Key key,
    @required this.items,
    this.onTap,
    this.currentIndex = 0,
    @required this.opacity,
    this.iconSize = 24.0,
    this.borderRadius,
    this.elevation,
    this.backgroundColor,
    this.hasNotch = false,
    this.hasInk = false,
    this.inkColor,
  })  : assert(items != null),
        assert(items.length >= 2),
        assert(0 <= currentIndex && currentIndex < items.length),
        assert(iconSize != null),
        super(key: key);

  final List<CustomBottomBarItem> items;
  final ValueChanged<int> onTap;
  int currentIndex;
  final double iconSize;
  final double opacity;
  final BorderRadius borderRadius;
  final double elevation;
  final Color backgroundColor;
  final bool hasNotch;
  final bool hasInk;
  final Color inkColor;

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationTile extends StatelessWidget {
  const _BottomNavigationTile(
      this.item, this.opacity, this.animation, this.iconSize,
      {this.onTap,
      this.colorTween,
      this.flex,
      this.selected = false,
      this.indexLabel,
      this.ink = false,
      this.inkColor})
      : assert(selected != null);

  final CustomBottomBarItem item;
  final Animation<double> animation;
  final double iconSize;
  final VoidCallback onTap;
  final ColorTween colorTween;
  final double flex;
  final bool selected;
  final String indexLabel;
  final double opacity;
  final bool ink;
  final Color inkColor;

  @override
  Widget build(BuildContext context) {
    int size;
    size = (flex * 1000.0).round();

    return Expanded(
      flex: size,
      child: Semantics(
        container: true,
        header: true,
        selected: selected,
        child: Stack(
          children: <Widget>[
            InkResponse(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(50),
                left: Radius.circular(50),
              ),
              containedInkWell: true,
              onTap: onTap,
              splashColor: ink
                  ? inkColor != null
                      ? inkColor
                      : Theme.of(context).splashColor
                  : Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                height: 48,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _TileIcon(
                      colorTween: colorTween,
                      animation: animation,
                      iconSize: iconSize,
                      selected: selected,
                      item: item,
                    ),
                  ],
                ),
              ),
            ),
            if (selected)
              Container(
                height: 50,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [],
                  ),
                ),
              ),
            Semantics(
              label: indexLabel,
            )
          ],
        ),
      ),
    );
  }
}

class _TileIcon extends StatelessWidget {
  const _TileIcon({
    Key key,
    @required this.colorTween,
    @required this.animation,
    @required this.iconSize,
    @required this.selected,
    @required this.item,
  }) : super(key: key);

  final ColorTween colorTween;
  final Animation<double> animation;
  final double iconSize;
  final bool selected;
  final CustomBottomBarItem item;

  @override
  Widget build(BuildContext context) {
    Color iconColor;
    iconColor = Colors.white;
    return Align(
      alignment: Alignment.topCenter,
      heightFactor: 1.0,
      child: Container(
        child: IconTheme(
          data: IconThemeData(
            color: selected ? item.backgroundColor : iconColor,
            size: iconSize,
          ),
          child: selected ? item.activeIcon : item.icon,
        ),
      ),
    );
  }
}

class _BottomNavigationBarState extends State<CustomBottomBar>
    with TickerProviderStateMixin {
  List<AnimationController> _controllers = <AnimationController>[];
  List<CurvedAnimation> _animations;
  Color _backgroundColor;
  ValueListenable<ScaffoldGeometry> geometryListenable;
  bool fabExists = false;
  CustomBottomBar holder;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    geometryListenable = Scaffold.geometryOf(context);
  }

  void _resetState() {
    for (AnimationController controller in _controllers) controller.dispose();

    _controllers =
        List<AnimationController>.generate(widget.items.length, (int index) {
      return AnimationController(
        duration: Duration(milliseconds: 200),
        vsync: this,
      )..addListener(_rebuild);
    });
    _animations =
        List<CurvedAnimation>.generate(widget.items.length, (int index) {
      return CurvedAnimation(
        parent: _controllers[index],
        curve: Curves.fastOutSlowIn,
        reverseCurve: Curves.fastOutSlowIn.flipped,
      );
    });
    _controllers[widget.currentIndex].value = 1.0;
    _backgroundColor = widget.items[widget.currentIndex].backgroundColor;
  }

  @override
  void initState() {
    super.initState();
    _resetState();
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    for (AnimationController controller in _controllers) controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CustomBottomBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.items.length != oldWidget.items.length) {
      _resetState();
      return;
    }

    if (widget.currentIndex != oldWidget.currentIndex) {
      _controllers[oldWidget.currentIndex].reverse();
      _controllers[widget.currentIndex].forward();
    } else {
      if (_backgroundColor != widget.items[widget.currentIndex].backgroundColor)
        _backgroundColor = widget.items[widget.currentIndex].backgroundColor;
    }
  }

  List<Widget> _createTiles() {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    assert(localizations != null);
    final List<Widget> children = <Widget>[];
    for (int i = 0; i < widget.items.length; i += 1) {
      children.add(
        _BottomNavigationTile(
          widget.items[i],
          widget.opacity,
          _animations[i],
          widget.iconSize,
          onTap: () {
            if (widget.onTap != null) widget.onTap(i);
          },
          flex: 1,
          selected: i == widget.currentIndex,
          indexLabel: localizations.tabLabel(
              tabIndex: i + 1, tabCount: widget.items.length),
          ink: widget.hasInk,
          inkColor: widget.inkColor,
        ),
      );
    }
    return children;
  }

  Widget _createContainer(List<Widget> tiles) {
    return DefaultTextStyle.merge(
      overflow: TextOverflow.ellipsis,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: tiles,
      ),
    );
  }

  Widget _inner(double additionalBottomPadding) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: kBottomNavigationBarHeight + additionalBottomPadding),
        child: Material(
          type: MaterialType.transparency,
          child: Padding(
            padding: EdgeInsets.only(bottom: additionalBottomPadding, right: 0),
            child: MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              child: _createContainer(_createTiles()),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasDirectionality(context));
    assert(debugCheckHasMaterialLocalizations(context));
    final double additionalBottomPadding =
        math.max(MediaQuery.of(context).padding.bottom - _kBottomMargin, 0.0);
    return BottomAppBar(
      elevation: 8,
      color: Colors.transparent,
      child: Semantics(
        explicitChildNodes: true,
        child: widget.hasNotch
            ? PhysicalShape(
                elevation: widget.elevation != null ? widget.elevation : 8.0,
                color: widget.backgroundColor != null
                    ? widget.backgroundColor
                    : Colors.white,
                clipper: _CustomBottomBarClipper(
                  shape: CircularNotchedRectangle(),
                  geometry: geometryListenable,
                  notchMargin: 8,
                ),
                child: _inner(additionalBottomPadding),
              )
            : Material(
                elevation: widget.elevation != null ? widget.elevation : 8.0,
                color: widget.backgroundColor != null
                    ? widget.backgroundColor
                    : Colors.white,
                child: _inner(additionalBottomPadding),
                borderRadius: widget.borderRadius != null
                    ? widget.borderRadius
                    : BorderRadius.zero,
              ),
      ),
    );
  }
}

class CustomBottomBarItem {
  const CustomBottomBarItem({
    @required this.icon,
    this.title,
    Widget activeIcon,
    this.backgroundColor,
  })  : activeIcon = activeIcon ?? icon,
        assert(icon != null);
  final Widget icon;
  final Widget activeIcon;
  final Widget title;
  final Color backgroundColor;
}

class _CustomBottomBarClipper extends CustomClipper<Path> {
  const _CustomBottomBarClipper({
    @required this.geometry,
    @required this.shape,
    @required this.notchMargin,
  })  : assert(geometry != null),
        assert(shape != null),
        assert(notchMargin != null),
        super(reclip: geometry);

  final ValueListenable<ScaffoldGeometry> geometry;
  final NotchedShape shape;
  final double notchMargin;

  @override
  Path getClip(Size size) {
    final Rect button = geometry.value.floatingActionButtonArea?.translate(
      0.0,
      geometry.value.bottomNavigationBarTop * -1.0,
    );

    return shape.getOuterPath(Offset.zero & size, button?.inflate(notchMargin));
  }

  @override
  bool shouldReclip(_CustomBottomBarClipper oldClipper) {
    return oldClipper.geometry != geometry ||
        oldClipper.shape != shape ||
        oldClipper.notchMargin != notchMargin;
  }
}
