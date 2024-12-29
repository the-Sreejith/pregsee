// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';

class CategorySelectPage extends StatefulWidget {
  final void Function(String category) onSelectionChanged;
  CategorySelectPage(this.onSelectionChanged);
  @override
  _CategorySelectPageState createState() => _CategorySelectPageState();
}

class _CategorySelectPageState extends State<CategorySelectPage> {
  List<_RadioModel> categories = [
    new _RadioModel(false, 'I\'m Trying to Get Pregnant','assets/temp/cat-1.png'),
    new _RadioModel(false, 'I\'m Currently Pregnant','assets/temp/cat-2.png'),
    new _RadioModel(false, 'I Have a Baby','assets/temp/cat-3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select a Category',
            style: AppFontStyles.loginhHeading,
          ),
          SizedBox(height: 8),
          Text('This is to give you personlised Content',
              style: AppFontStyles.loginSubtext),
          SizedBox(height: 24),
          Container(
            height: 440,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return new InkWell(
                  onTap: () {
                    setState(() {
                      if (widget.onSelectionChanged != null &&
                          !categories[index].isSelected) {
                        categories
                            .forEach((element) => element.isSelected = false);
                        categories[index].isSelected = true;
                        widget.onSelectionChanged(categories[index].text);
                      }
                    });
                  },
                  child: new _CategoryCard(categories[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final _RadioModel _item;
  _CategoryCard(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      padding: const EdgeInsets.only(right: 20),
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: _item.isSelected ? AppColors.secoundry : Color(0xFF4E4E4E),
        ),
      ),
      child: Row(
        children: [
          Flexible(
              child: Image.asset(_item.imgPath,
            width: 113,
          ),),
          SizedBox(width: 6),
          Flexible(
            child: Text(_item.text, style: AppFontStyles.categoryItem),
          ),
          SizedBox(width: 12),
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
  final String text,imgPath;

  _RadioModel(this.isSelected, this.text,this.imgPath);
}
