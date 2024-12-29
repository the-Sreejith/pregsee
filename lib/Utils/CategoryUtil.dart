class CategoryUtil {
  static String getCategoryFromId(String id) {
    switch (id) {
      case '00':
        return 'First Trimester';
      case '01':
        return 'Second Trimester';
      case '02':
        return 'Third Trimester';
      case '03':
        return 'Pregnancy Exercises';
      case '04':
        return 'Labour Room and Delevery';
      default:
        return 'Error';
    }
  }
}
