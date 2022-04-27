import 'package:app_coffee_advance_level/services/language/language_status.dart';
import 'package:app_coffee_advance_level/services/restart_app/app_restart.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FlagLang extends StatelessWidget {
  const FlagLang({
    Key? key,
    required String title,
    required String flag,
    required Locale locale,
  })  : _title = title,
        _flag = flag,
        _locale = locale,
        super(key: key);

  final String _title;
  final String _flag;
  final Locale _locale;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          if (_locale.languageCode == AppLang.currentLang(context)) {
            Navigator.pop(context);
          } else {
            await EasyLocalization.of(context)?.setLocale(_locale);
            RestartApp.reBuildApp(context);
          }
        },
        child: Column(
          children: [
            // * Flag
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_flag),
                  ),
                ),
              ),
            ),
            Expanded(child: Text(_title.tr()))
          ],
        ),
      ),
    );
  }
}
