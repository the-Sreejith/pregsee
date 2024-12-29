// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';

// 🌎 Project imports:
import '/ChangeNotifierControllers/week_by_week_controller.dart';
import '/Const/AppConst.dart';
import '/Models/WeekInfo.dart';
import '/Widget/baby_size_fruit_analogy.dart';
import '/Widget/option_switch.dart';

class WeekInfoCard extends StatefulWidget {
  WeekInfoCard(this.data, {this.showFullData = false});

  final List<WeekInfo> data;
  final bool showFullData;

  @override
  _WeekInfoCardState createState() => _WeekInfoCardState();
}

class _WeekInfoCardState extends State<WeekInfoCard> {
  BabySizeWidgetController babySizeWidgetController;
  bool isEn = false;
  bool isPageChangeing = false;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    var controller = context.read<WeekByWeekController>();
    pageController = PageController(initialPage: controller.index);
    babySizeWidgetController =
        BabySizeWidgetController(initialIndex: controller.index);
  }

  @override
  void dispose() {
    pageController.dispose();
    babySizeWidgetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BabySizeFruitAnalogyWidget(
          controller: babySizeWidgetController,
          data: widget.data,
          onChanged: (index) {
            setState(() {
              isPageChangeing = true;
            });
            context.read<WeekByWeekController>().index = index;
            pageController
                .animateToPage(index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut)
                .then((value) {
              setState(() {
                isPageChangeing = false;
              });
            });
          },
        ),
        Container(
          height: widget.showFullData ? 1800 : 500,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return _InfoCard(
                widget.data[index],
                showFullData: widget.showFullData,
                isEnChanged: (value) {
                  context.read<WeekByWeekController>().isEn = value;
                  setState(() {
                    isEn = value;
                  });
                },
              );
            },
            onPageChanged: (index) {
              if (!isPageChangeing) {
                context.read<WeekByWeekController>().index = index;
                babySizeWidgetController.animateToIndex(index);
              }
            },
          ),
        )
      ],
    );
  }
}

class _InfoCard extends StatefulWidget {
  const _InfoCard(this.weekInfo,
      {this.showFullData, this.isEn = false, this.isEnChanged, Key key})
      : super(key: key);

  final Function(bool) isEnChanged;
  final bool showFullData, isEn;
  final WeekInfo weekInfo;

  @override
  __InfoCardState createState() => __InfoCardState();
}

const TextStyle _headStyle = TextStyle(
  color: Colors.black,
  height: 1.5,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
const TextStyle _descStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

class __InfoCardState extends State<_InfoCard> {
  var currentContents;
  bool isEn;

  @override
  void initState() {
    super.initState();
    isEn = context.read<WeekByWeekController>().isEn;
    if (isEn) {
      currentContents = widget.weekInfo.contentsEn;
    } else {
      currentContents = widget.weekInfo.contentsMl;
    }
  }

  List<InlineSpan> _builReadingSections(List<Contents> contents) {
    List<InlineSpan> _rtnList = [];
    for (var i = 0; i < contents.length; i++) {
      final _secData = contents[i];
      _rtnList.add(
        TextSpan(children: [
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.only(bottom: 12, top: 10),
              child: Text(_secData.title, style: _headStyle),
            ),
          ),
          TextSpan(text: '\n', style: _headStyle),
          ..._createTextSpanList(_secData.contentPoints),
        ]),
      );
    }
    return _rtnList;
  }

  List<InlineSpan> _createTextSpanList(List<String> texts) {
    List<InlineSpan> _rtnList = [];
    for (var i = 0; i < texts.length; i++) {
      _rtnList.add(
        WidgetSpan(
          child: Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(texts[i], style: _descStyle),
          ),
        ),
      );
    }
    return _rtnList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xFFE8F5FF),
        borderRadius: const BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              children: [
                Spacer(),
                Container(
                  child: OptionSwitch(
                    width: 150,
                    height: 30,
                    color: AppColors.primary,
                    startAtRight: !isEn,
                    onChanged: (option) {
                      if (option == WhichOption.left && !isEn) {
                        widget.isEnChanged(true);
                        setState(() {
                          isEn = true;
                          currentContents = widget.weekInfo.contentsEn;
                        });
                      }
                      if (option == WhichOption.right && isEn) {
                        widget.isEnChanged(false);
                        setState(() {
                          isEn = false;
                          currentContents = widget.weekInfo.contentsMl;
                        });
                      }
                    },
                    left: 'Eng',
                    right: 'Mal',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              children: [
                Icon(AppIcons.chart_outline),
                SizedBox(width: 4),
                Text(
                  '13-20 mm',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Spacer(),
                Icon(AppIcons.heart_outline),
                SizedBox(width: 4),
                Text(
                  '160/min',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            height: widget.showFullData ? 1630 : 330,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              overflow: TextOverflow.fade,
              text: TextSpan(
                children: [
                  ..._builReadingSections(currentContents),
                ],
              ),
            ),
          ),
          !widget.showFullData
              ? Padding(
                  padding: const EdgeInsets.only(
                      top: 2, right: 16, left: 16, bottom: 16),
                  child: Text(
                    '... Read more',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              : SizedBox(height: 16),
        ],
      ),
    );
  }
}
