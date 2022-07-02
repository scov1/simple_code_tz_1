import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_code_tz_1/constants/app_assets.dart';
import 'package:simple_code_tz_1/data/repository/settings_repository.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final settingsRepository =
        Provider.of<SettingsRepository>(context, listen: false);
    settingsRepository.init().whenComplete(
      () async {
        var defaultLocale = const Locale('ru', 'RU');
        final locale = await settingsRepository.readLocale();
        if (locale == 'en') {
          defaultLocale = const Locale('en');
        }
        S.load(defaultLocale).whenComplete(
          () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.images.background),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(AppAssets.images.logo),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(AppAssets.images.characterOne),
                      ),
                      Expanded(
                        child: Image.asset(AppAssets.images.characterTwo),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
