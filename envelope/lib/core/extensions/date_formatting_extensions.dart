import 'package:intl/intl.dart';

extension DateFormattingExtensions on DateTime {
  /// e.g. "3 Mar 26"
  String get shortFormatted => DateFormat('d MMM yy').format(this);

  /// e.g. "3 Mar 2026"
  String get mediumFormatted => DateFormat('d MMM yyyy').format(this);

  /// e.g. "Wednesday, 3 March 2026"
  String get longFormatted => DateFormat('EEEE, d MMMM yyyy').format(this);
}
