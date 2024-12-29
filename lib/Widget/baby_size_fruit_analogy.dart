// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/Models/WeekInfo.dart';

class BabySizeFruitAnalogyWidget extends StatefulWidget {
  BabySizeFruitAnalogyWidget(
      {this.data, this.showText = true, this.onChanged, this.controller});

  final Function(int index) onChanged;
  final BabySizeWidgetController controller;
  final List<WeekInfo> data;
  final bool showText;

  @override
  _BabySizeFruitAnalogyWidgetState createState() =>
      _BabySizeFruitAnalogyWidgetState();
}

const kTextStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.w700);

class _BabySizeFruitAnalogyWidgetState
    extends State<BabySizeFruitAnalogyWidget> {
  int _selectedIndex;
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_listener);
  }

  _listener() {
    if (_selectedIndex != widget.controller.index) {
      setState(() {
        _selectedIndex = widget.controller.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
        itemCount: 40,
        scrollDirection: Axis.horizontal,
        controller: widget.controller._scrollController,
        itemBuilder: (context, index) {
          return Container(
            width: index == widget.controller.index ? 171 : 62,
            height: 70,
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  if (widget.controller.index != index) {
                    widget.controller.animateToIndex(index);
                    widget.onChanged(index);
                    setState(() {});
                  }
                },
                child: Container(
                  height: index == widget.controller.index ? 70 : 50,
                  width: index == widget.controller.index ? 70 : 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(widget.data[index].imgUrl),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.controller.index == index && widget.showText)
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          'Week ${widget.data[index].week}',
                          style: kTextStyle,
                        ),
                      ),
                    Divider(
                      color: Colors.white,
                      thickness: index == widget.controller.index ? 1.5 : 3,
                    ),
                    if (widget.controller.index == index && widget.showText)
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          widget.data[index].title.en,
                          style: kTextStyle,
                        ),
                      ),
                  ],
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}

class BabySizeWidgetController extends ChangeNotifier {
  BabySizeWidgetController({this.initialIndex = 0}) {
    _index = initialIndex;
    _scrollController = ScrollController(initialScrollOffset: _index * 62.0);
  }

  final int initialIndex;

  int _index;
  ScrollController _scrollController;

  get index => _index;

  get scrollController => _scrollController;

  Future<void> animateToIndex(int index) async {
    if (index < 40 && index != null) {
      _index = index;
      notifyListeners();
      _scrollController.animateTo(
        (index) * 62.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }
}
