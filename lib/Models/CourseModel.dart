class CourseModel {
  String id;
  String title;
  String imgUrl;
  String duration;
  int noOfVideos;
  int noOfQuiz;
  bool containsPremium;

  CourseModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        title = data['title'],
        imgUrl = data['imgUrl'],
        duration = data['duration'],
        noOfVideos = data['noOfVideos'],
        noOfQuiz = data['noOfQuiz'],
        containsPremium = data['containsPremium'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'imgUrl': imgUrl,
      'duration': duration,
      'containsPremium' :containsPremium,
      'noOfVideos':noOfVideos,
      'noOfQuiz':noOfQuiz,
    };
  }
}
