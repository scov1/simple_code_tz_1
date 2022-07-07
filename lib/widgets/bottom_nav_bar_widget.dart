import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_code_tz_1/constants/app_assets.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/character_list/character_screen.dart';
import 'package:simple_code_tz_1/ui/settings_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedTab;
  const BottomNavBar({Key? key, required this.selectedTab}) : super(key: key);

  PageRouteBuilder _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedTab,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textFiledMain,
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.svg.characterIcon,
                color: selectedTab == 0
                    ? AppColors.primary
                    : AppColors.textFiledMain,
              ),
              label: S.of(context).characters),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.svg.settingsIcon,
              color: selectedTab == 1
                  ? AppColors.primary
                  : AppColors.textFiledMain,
            ),
            label: S.of(context).settings,
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const CharacterScreen()),
              (route) => false,
            );
          } else if (index == 1) {
            Navigator.of(context).pushAndRemoveUntil(
              _createRoute(const SettingsScreen()),
              (route) => false,
            );
          }
        });
  }
}
