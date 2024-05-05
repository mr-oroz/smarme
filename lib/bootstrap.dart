import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:w_sharme_beauty/core/di/injector.dart';
import 'package:w_sharme_beauty/features/app/widgets/app.dart';
import 'package:w_sharme_beauty/firebase_options.dart';
Future<void> lazyBootstrap(
  WidgetsBinding widgetsBinding,
  String environment,
) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await ScreenUtil.ensureScreenSize();

  configureDependencies(environment: environment);

  initializeDateFormatting('ru_RU').then((_) {
    runApp(const App());
  });
}
