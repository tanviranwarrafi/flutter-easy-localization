import 'package:flutter/material.dart';

class Language {
  String code;
  String codeWithCountry;
  String label;
  Locale locale;

  Language({this.code = 'en', this.codeWithCountry = 'en-US', this.label = 'English', this.locale = const Locale('en', 'US')});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['codeWithCountry'] = codeWithCountry;
    map['label'] = label;
    map['locale'] = locale;
    return map;
  }
}

var _BENGALI = Language(code: 'bn', codeWithCountry: 'bn-BN', label: 'বাংলা', locale: const Locale('bn', 'BN'));
List<Language> LANGUAGE_LIST = [Language(), _BENGALI];
