class RecommendedVideo {
  final String courseId;
  final String lessonId;
  final String category;
  final String contentTitle;
  final int durationSeen;
  final int durationTotal;

  RecommendedVideo({
    this.courseId,
    this.lessonId,
    this.category,
    this.contentTitle,
    this.durationSeen,
    this.durationTotal,
  });

  RecommendedVideo.fromData(Map<String, dynamic> data)
      : courseId = data['courseId'],
        lessonId = data['lessonId'],
        category = data['categoryName'],
        contentTitle = data['contentTitle'],
        durationSeen = data['durationSeen'],
        durationTotal = data['durationTotal'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['courseId'] = this.courseId;
    data['lessonId'] = this.lessonId;
    data['categoryName'] = this.category;
    data['contentTitle'] = this.contentTitle;
    data['durationSeen'] = this.durationSeen;
    data['durationTotal'] = this.durationTotal;
    return data;
  }
}
