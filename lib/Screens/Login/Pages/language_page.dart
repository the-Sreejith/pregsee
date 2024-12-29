// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';

class LanguagePage extends StatefulWidget {
  final void Function(String lang) onSelectionChanged;
  LanguagePage(this.onSelectionChanged);
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  List<_RadioModel> availableLanguages = [
    _RadioModel(false, 'English'),
    _RadioModel(false, 'മലയാളം'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Your Language',
            style: AppFontStyles.loginhHeading,
          ),
          SizedBox(height: 15),
          Text('You can change this later in the settings',
              style: AppFontStyles.loginSubtext),
          SizedBox(height: 33),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: availableLanguages.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  //highlightColor: Colors.red,
                  // splashColor: Colors.blueAccent,
                  onTap: () {
                    setState(() {
                      if (widget.onSelectionChanged != null &&
                          !availableLanguages[index].isSelected) {
                        availableLanguages
                            .forEach((element) => element.isSelected = false);
                        availableLanguages[index].isSelected = true;
                        widget
                            .onSelectionChanged(availableLanguages[index].lang);
                      }
                    });
                  },
                  child: new _LangCard(availableLanguages[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _LangCard extends StatelessWidget {
  final _RadioModel _item;
  _LangCard(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: _item.isSelected ? AppColors.secoundry : Color(0xFF4E4E4E),
        ),
      ),
      child: Row(
        children: [
          Text(
            _item.lang,
            style: AppFontStyles.subtext.copyWith(
              color: _item.isSelected ? AppColors.secoundry : Color(0xFF4E4E4E),
            ),
          ),
          Spacer(),
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              color:
                  _item.isSelected ? AppColors.secoundry : Colors.transparent,
              border: Border.all(
                color:
                    _item.isSelected ? AppColors.secoundry : Color(0xFF4E4E4E),
              ),
              shape: BoxShape.circle,
            ),
            child: _item.isSelected
                ? Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  )
                : SizedBox(),
          )
        ],
      ),
    );
  }
}

class _RadioModel {
  bool isSelected;
  final String lang;

  _RadioModel(this.isSelected, this.lang);
}
