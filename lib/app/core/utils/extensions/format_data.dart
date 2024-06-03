



import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  String get ddMMyy => DateFormat("dd-MM-yy").format(this);
  String ddMMyyyy(String formate) {
    return DateFormat(formate).format(this);
  }

  String get yyyDDmm => DateFormat("yyyy-MM-dd").format(this);
  String get mmYYYY => DateFormat("MM-yyyy").format(this);
  String get mmDDyyHHmmA => DateFormat('MM/dd/yyyy hh:mm a').format(this);
  String get yyyDDmmNumber => DateFormat("yyyyMMdd").format(this);
}