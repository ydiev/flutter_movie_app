import 'package:flutter/material.dart';
import 'config/routing/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: appRouter,
        title: 'Your Movies Flutter App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade700),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
      );
}
