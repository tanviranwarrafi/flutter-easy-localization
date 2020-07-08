import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LocalizationPage extends StatefulWidget {
  @override
  _LocalizationPageState createState() => _LocalizationPageState();
}

class _LocalizationPageState extends State<LocalizationPage> {
  bool switchValue = false;

  void switchLanguage(bool val) {
    setState(() {
      switchValue = val;
      if (val) {
        EasyLocalization.of(context).locale = Locale('bn', 'BN');
      } else {
        EasyLocalization.of(context).locale = Locale('en', 'EN');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app_name'.tr().toString()),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.language),
            offset: Offset(0, 60),
            elevation: 5.0,
            onSelected: (value) {
              if (value == "bangla") {
                setState(() {
                  EasyLocalization.of(context).locale = Locale('bn', 'BN');
                });
              } else {
                EasyLocalization.of(context).locale = Locale('en', 'EN');
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "bangla",
                  child: Text(
                    'bangla'.tr().toString(),
                  ),
                ),
                PopupMenuItem(
                  value: "english",
                  child: Text(
                    'english'.tr().toString(),
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Text(
              'easy_localization'.tr().toString(),
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'https_pub_dev_packages_easy_localization'.tr().toString(),
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.indigo,
                  decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'example'.tr().toString(),
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'md_tanvir_anwar_rafi'.tr().toString(),
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          Center(
            child: Text(
              'flutter_developer'.tr().toString(),
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          Center(
            child: Text(
              'teksoi_software_limited'.tr().toString(),
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesome.font,
                color: Colors.red,
                size: 18,
              ),
              SizedBox(width: 8),
              Text(
                'english'.tr().toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              Switch(
                value: switchValue,
                onChanged: switchLanguage,
                activeColor: Colors.green,
                dragStartBehavior: DragStartBehavior.down,
                inactiveTrackColor: Colors.red,
                autofocus: true,
              ),
              Text(
                'bangla'.tr().toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                FontAwesome.flag,
                color: Colors.green,
                size: 18,
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'language_change_with_buttons'.tr().toString(),
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    EasyLocalization.of(context).locale = Locale('bn', 'BN');
                  });
                },
                child: Text('change_to_bangla'.tr().toString()),
              ),
              RaisedButton(
                onPressed: () {
                  EasyLocalization.of(context).locale = Locale('en', 'EN');
                },
                child: Text('change_to_english'.tr().toString()),
              )
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
