// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/Const/AppConst.dart';
import '/Models/DailyTips.dart';

class DailyTipsCard extends StatefulWidget {
  DailyTipsCard(this.dailyTips, {Key key}) : super(key: key);

  final List<DailyTips> dailyTips;

  @override
  _DailyTipsCardState createState() => _DailyTipsCardState();
}

class _DailyTipsCardState extends State<DailyTipsCard> {
  bool readMore = false;
  PageController _pageviewController;

  List<InlineSpan> _createTextSpanList(List<String> texts) {
    List<InlineSpan> _rtnList = [];
    for (var i = 0; i < texts.length; i++) {
      _rtnList.add(
        WidgetSpan(
          child: Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            child:
                Text('\n' + texts[i], style: TextStyle(color: Colors.white60)),
          ),
        ),
      );
    }
    return _rtnList;
  }

  @override
  void initState() {
    super.initState();
    _pageviewController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: !readMore ? 180 : 600,
      child: PageView.builder(
          itemCount: widget.dailyTips.length,
          controller: _pageviewController,
          itemBuilder: (context, index) {
            return Container(
              height: !readMore ? 180 : 600,
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dailyTips[index].heading,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: !readMore ? 70 : null,
                    child: RichText(
                        overflow: TextOverflow.fade,
                        text: TextSpan(children: [
                          ..._createTextSpanList(
                              widget.dailyTips[index].contents)
                        ])),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            readMore = !readMore;
                          });
                        },
                        child: Container(
                          // alignment: Alignment.center,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: AppColors.secoundry.withOpacity(0.8),
                                width: 1.5),
                          ),
                          child: Text(
                            readMore ? 'Read less' : 'Read more',
                            style: TextStyle(
                              color: AppColors.secoundry.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          _pageviewController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          // alignment: Alignment.center,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: AppColors.secoundry, width: 1.5),
                          ),
                          child: Text(
                            'Next Tip',
                            style: TextStyle(
                              color: AppColors.secoundry,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
