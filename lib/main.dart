import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: const Locale('ru','RU'),
      home: const SplashScreen(),
    );
  }
}