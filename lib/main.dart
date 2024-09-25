import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/constants/data_constants.dart';
import 'package:tutorial/di.dart';
import 'package:tutorial/services/storage_service.dart';
import 'package:tutorial/tutorial_app.dart';

import 'di.dart' as dependency_injection;
import 'models/language.dart';

Future<void> main() async {
  await dependency_injection.init();
  runApp(_runTutorialApp());
}

EasyLocalization _runTutorialApp() {
  var langCode = sl<StorageService>().language;
  var language = LANGUAGE_LIST.firstWhere((item) => item.codeWithCountry == langCode);
  return EasyLocalization(
    path: 'assets/languages',
    fallbackLocale: FALLBACK_LANGUAGE,
    useFallbackTranslations: true,
    supportedLocales: SUPPORTED_LOCALES,
    startLocale: language.locale,
    child: TutorialApp(),
  );
}
