import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_code_tz_1/data/repository/character_repository.dart';
import 'package:simple_code_tz_1/data/repository/settings_repository.dart';

class InitWidget extends StatelessWidget {
  final Widget child;
  const InitWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => SettingsRepository(),
        ),
        Provider(
          create: (context) => CharacterRepository(),
        ),
      ],
      child: child,
    );
  }
}
