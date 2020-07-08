import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:multiple_language_change/localizationPage.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      path: "assets/languages",
      saveLocale: true,
      supportedLocales: [
        Locale('en', 'EN'),
        Locale('bn', 'BN'),
      ],
      fallbackLocale: Locale('en', 'EN'),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app_name'.tr(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: LocalizationPage(),
    );
  }
}
