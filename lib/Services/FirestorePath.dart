class FirestorePath {
  static String lastPlayed(String uid) => 'users/$uid/lastPlayed/Videos';
  static String favouriteProduct(String uid,productId) => 'users/$uid/favouriteProducts/$productId';
  static String comments(String courseId,videoId) => 'courses/001/comments/$courseId/$videoId';
  static String progress(String uid,courseId) => 'users/$uid/progress/$courseId';
  static String weekByWeek(String lang) => 'weekByWeek/$lang';
}
