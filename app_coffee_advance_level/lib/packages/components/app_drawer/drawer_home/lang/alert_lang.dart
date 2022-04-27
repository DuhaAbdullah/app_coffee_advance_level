import 'package:app_coffee_advance_level/language/config/config_lang.dart';
import 'package:app_coffee_advance_level/language/generated/key_lang.dart';
import 'package:app_coffee_advance_level/packages/components/button/outlined_btn.dart';
import 'package:app_coffee_advance_level/utils/path_image.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'flag_lang.dart';

class AlertLang extends StatelessWidget {
  const AlertLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // * title Alert
      title: const Text(
        KeyLang.selectLanguage,
        textAlign: TextAlign.center,
      ).tr(),
      // * body Alert
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        height: 120.h,
        child: Row(
          children: [
            FlagLang(
              title: KeyLang.arabic,
              flag: PathImages.saudi,
              locale: ConfigLanguage.arLocale,
            ),
            FlagLang(
              title: KeyLang.english,
              flag: PathImages.unitedStates,
              locale: ConfigLanguage.enLocale,
            ),
          ],
        ),
      ),
      // * Button
      actions: [
        OutlinedBtn(title: KeyLang.cancel, onTap: () => Navigator.pop(context))
      ],
    );
  }
}
