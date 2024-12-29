class WeekInfo {
  final int week;
  final Title title;
  final String imgUrl, babySize, heartBeat;
  final List<Contents> contentsEn, contentsMl;

  WeekInfo(
      {this.week,
      this.title,
      this.imgUrl,
      this.babySize,
      this.heartBeat,
      this.contentsEn,
      this.contentsMl});

  WeekInfo.fromData(Map<String, dynamic> data, String week)
      : week = int.parse(week),
        title = Title.fromMap(data['title']),
        imgUrl = data['imgUrl'],
        babySize = data['babySize'],
        heartBeat = data['heartBeat'],
        contentsEn = Contents.getContentsList(data['en']),
        contentsMl = Contents.getContentsList(data['ml']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['week'] = this.week;
    data['title'] = title.toMap();
    data['imgUrl'] = this.imgUrl;
    data['babySize'] = this.babySize;
    data['heartBeat'] = this.heartBeat;
    data['ml'] = this.contentsMl.map((v) => v.toJson()).toList();
    data['en'] = this.contentsEn.map((v) => v.toJson()).toList();
    return data;
  }
}

class Title {
  final String en;
  final String ml;
  Title({
    this.en,
    this.ml,
  });

  Map<String, dynamic> toMap() {
    return {
      'en': en,
      'ml': ml,
    };
  }

  factory Title.fromMap(Map<String, dynamic> map) {
    return Title(
      en: map['en'],
      ml: map['ml'],
    );
  }
}

class Contents {
  String title;
  List<String> contentPoints;

  Contents({this.title, this.contentPoints});

  Contents.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    contentPoints = json['contentPoints']?.cast<String>()?.toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['contentPoints'] = this.contentPoints;
    return data;
  }

  static List<Contents> getContentsList(List jsonList) {
    List<Contents> contents = [];
    if (jsonList != null) {
      jsonList.forEach((v) {
        if (v['title'] != null && v['contentPoints'] != null) {
          contents.add(new Contents.fromJson(v));
        }
      });
    }
    return contents;
  }
}
