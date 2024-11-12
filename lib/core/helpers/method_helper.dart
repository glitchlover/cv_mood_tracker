class MethodHelper {
  static String dateToday() {
    DateTime now = DateTime.now();
    String formattedDate = "${now.day}/${now.month}/${now.year}";
    return formattedDate;
  }
}
