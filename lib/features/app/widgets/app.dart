import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w_sharme_beauty/core/provider/bloc_provider.dart';
import 'package:w_sharme_beauty/core/router/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with AppRouter {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 923),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProviders(
        child: MaterialApp.router(
          routerConfig: routerConfig,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
