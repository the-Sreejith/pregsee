abstract class CourseContent {
  final String id;

  CourseContent(this.id);

}

class Video extends CourseContent {
  final String id,title;
  final bool isPremium;
  final String imgUrl;
  final QualityLinks qualityLinks;
  final String duration;

  Video({this.id,this.title,this.isPremium, this.imgUrl, this.qualityLinks, this.duration}):super(id);

  Video.fromData(Map<String, dynamic> data,String id)
      : id = id,
      isPremium = data['isPremium'],
        // index = data['index'],
        title = data['title'],
        imgUrl = data['imgUrl'],
        qualityLinks = data['isPremium']?null:QualityLinks.fromData(data),
        duration = data['duration'],
        super(id);
}

class QualityLinks {
  final String sd360;
  final String sd540;
  final String hd720;
  final String hd1080;
  final String hls;

  QualityLinks(this.sd360, this.sd540, this.hd720, this.hd1080, this.hls);
  QualityLinks.fromData(Map<String, dynamic> data)
      : hls = data['hls'],
        sd360 = data['360'],
        sd540 = data['540'],
        hd720 = data['720'],
        hd1080 = data['1080'];
}

class Quiz extends CourseContent {
  // final int index;
  final String id,title;
  final bool isPremium;
  final List<Question> questions;

  Quiz({this.id,this.title, this.questions, this.isPremium}):super(id);

  Quiz.fromData(Map<String, dynamic> data,String id)
      : id = id,
        title = data['title'],
        isPremium = data['isPremium'],
        questions = List.from(data['questions'])
            .asMap()
            .entries
            .map((e) => Question.fromData(e.value))
            .toList(),
            super(id);
}


class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.options, this.answer});

  Question.fromData(Map<String, dynamic> data)
      : id = data['id'],
        question = data['question'],
        answer = data['answer'],
        options = List.from(data['options']);
}
