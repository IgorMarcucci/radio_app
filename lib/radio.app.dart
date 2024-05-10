import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radio_app/routes/routes.dart';

class RadioApp extends StatelessWidget {
  const RadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'RadioApp',
      routerDelegate: routesIOS.routerDelegate,
      routeInformationParser: routesIOS.routeInformationParser,
      routeInformationProvider: routesIOS.routeInformationProvider,
      theme: const CupertinoThemeData(),
    );
  }
}
