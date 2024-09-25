import 'package:easy_localization/easy_localization.dart';

extension ParseNumbers on String {
  int get parseInt => int.parse(this);
  double get parseDouble => double.parse(this);
  String get toLower => toLowerCase();
  String get toUpper => toUpperCase();

  String get toKey => this.trim().toLower;
  String get translate => tr(this);
}
