import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/data/repository/settings_repository.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/widgets/bottom_nav_bar_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        value: "ru_RU",
        child: Text(S.of(context).russian),
      ),
      DropdownMenuItem(
          value: "en",
          child: Text(
            S.of(context).english,
          ))
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    String selectedValue = S.of(context).russian;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          S.of(context).settings,
          style: AppStyles.s20w500main,
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  '${S.of(context).language}:',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              DropdownButton(
                  value: Intl.getCurrentLocale(),
                  onChanged: (String? newValue) async {
                    selectedValue = newValue!;
                    await S.load(Locale(selectedValue));
                    setState(() {});
                    if (!mounted) return;
                    final settingsRepository =
                        Provider.of<SettingsRepository>(context, listen: false);
                    settingsRepository.saveLocale(selectedValue);
                  },
                  items: dropdownItems),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(selectedTab: 2),
    );
  }
}
