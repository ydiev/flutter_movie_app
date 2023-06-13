import 'package:flutter/material.dart';
import 'config/routing/app_router.dart';
import 'config/theme/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: appRouter,
        title: 'Your Movies Flutter App',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
      );
}
