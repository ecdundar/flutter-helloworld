import 'package:intl/intl.dart';

class TarihHelper {
  static String GetString(DateTime tarih, String format) {
    var formatter = new DateFormat(format, 'tr');
    String formattedDate = formatter.format(tarih);
    return formattedDate;
  }

  static DateTime GetDate(String tarih, String format) {
    var formatter = new DateFormat(format, 'tr');
    return formatter.parse(tarih);
  }
}
