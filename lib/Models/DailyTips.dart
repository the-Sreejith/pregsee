// class DialyTips {
//   String id;
//   String heading;
//   List<String> contents;
// }

class DailyTips {
  String heading;
  List<String> contents;

  DailyTips({this.heading, this.contents});

  DailyTips.fromData(Map<String, dynamic> data) {
    heading = data['heading'];
    contents = data['contents'].cast<String>();
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['heading'] = this.heading;
    data['contents'] = this.contents;
    return data;
  }
}

const data = {
  "heading":"",
  "contents":[
    "",
    "",
    "",
    "",
    "",
  ],
};
const dataCopy = {
  "heading":"",
  "contents":[
    "",
    "",
    "",
    "",
    "",
  ],
};
