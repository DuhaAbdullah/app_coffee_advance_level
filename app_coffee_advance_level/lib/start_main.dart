import 'package:app_coffee_advance_level/packages/pages/splash/views/body.dart';
import 'package:app_coffee_advance_level/services/restart_app/app_restart.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes/app_route.dart';
import 'themes/custom_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RestartApp(
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Basic Project',
          theme: CustomTheme.lightTheme(context),
          darkTheme: CustomTheme.darkTheme(context),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          initialRoute: PageSplash.id,
          routes: AppRoute.route,
        ),
      ),
    );
  }
}
