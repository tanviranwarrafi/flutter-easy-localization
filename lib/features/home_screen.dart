import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/components/popup/language_popup.dart';
import 'package:tutorial/di.dart';
import 'package:tutorial/extensions/string_ext.dart';
import 'package:tutorial/models/language.dart';
import 'package:tutorial/services/storage_service.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/themes/text_styles.dart';
import 'package:tutorial/utils/keys.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _language = LANGUAGE_LIST.first;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text('Localization'.translate),
        actions: [LanguagePopup(onSelect: _onConfirm)],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
          shrinkWrap: true,
          clipBehavior: Clip.antiAlias,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 04),
            Image.asset('assets/images/thinking_man.png', height: 220),
            const SizedBox(height: 10),
            Center(child: Text('name'.translate, style: TextStyles.text16_600.copyWith(color: dark))),
            Center(child: Text('designation'.translate, textAlign: TextAlign.center, style: TextStyles.text14_500.copyWith(color: dark))),
            const SizedBox(height: 16),
            Text('description'.translate, style: TextStyles.text14_400.copyWith(color: dark)),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Future<void> _onConfirm(Language item) async {
    _language = item;
    var locale = item.locale;
    var context = navigatorKey.currentState!.context;
    await context.setLocale(locale);
    sl<StorageService>().setLanguage(item.codeWithCountry);
    setState(() {});
  }
}
