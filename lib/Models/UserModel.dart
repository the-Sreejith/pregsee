class UserModel {
  String uid;
  String fcmToken;
  String phone;
  String fullName;
  String photoUrl;
  String language;
  String category;
  DateTime dueDate;
  String userType;
  String league;
  int diamond;

  UserModel({
    this.uid,
    this.fcmToken,
    this.phone,
    this.fullName,
    this.photoUrl,
    this.language,
    this.category,
    this.dueDate,
    this.diamond,
    this.league,
    this.userType,
  });

  UserModel.fromData(Map<String, dynamic> data, String uid)
      : uid = uid,
      fcmToken = data['fcmToken'],
        phone = data['phone'],
        fullName = data['fullName'],
        photoUrl = data['photoUrl'],
        language = data['language'],
        category = data['category'],
        dueDate = DateTime.parse(data['dueDate']),
        league = data['league'],
        diamond = data['diamond'],
        userType = data['userType'];

  Map<String, dynamic> toJson() {
    return {
      'fcmToken': fcmToken,
      'phone': phone,
      'fullName': fullName,
      'photoUrl': photoUrl,
      'language': language,
      'category': category,
      'dueDate': dueDate.toString(),
      'diamond': diamond ?? 0,
      'league': league ?? 'Super mom',
      'userType': userType ?? 'normal'
    };
  }

  @override
  String toString() {
    return 'UID:$uid,\Name:$fullName,\nLang:$language,\nCategory:$category,\nDueDate:$dueDate,\nUserType:$userType,';
  }
}
