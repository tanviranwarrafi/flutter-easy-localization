import 'package:flutter/material.dart';
import 'package:tutorial/models/language.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/themes/text_styles.dart';

class LanguagePopup extends StatelessWidget {
  final Function(Language) onSelect;
  LanguagePopup({required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      elevation: 2,
      icon: Icon(Icons.language, color: dark.withOpacity(0.6)),
      offset: const Offset(0, 60),
      onSelected: (value) => _onSelect(value),
      itemBuilder: (context) => List.generate(LANGUAGE_LIST.length, (index) => _menuItem(LANGUAGE_LIST[index])).toList(),
    );
  }

  void _onSelect(String value) {
    var language = value == 'en' ? LANGUAGE_LIST[0] : LANGUAGE_LIST[1];
    onSelect(language);
  }

  PopupMenuItem<dynamic> _menuItem(Language item) {
    return PopupMenuItem(
      value: item.code,
      child: Text(item.label),
      textStyle: TextStyles.text15_400.copyWith(color: dark),
    );
  }
}
