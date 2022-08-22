import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_code_tz_1/constants/app_assets.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/characters/character_screen.dart';
import 'package:simple_code_tz_1/ui/episodes/episode_screen.dart';
import 'package:simple_code_tz_1/ui/locations/location_screen.dart';
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
      showUnselectedLabels: true,
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
            AppAssets.svg.locationIcon,
            width: 24,
            height: 24,
            color:
                selectedTab == 1 ? AppColors.primary : AppColors.textFiledMain,
          ),
          label: S.of(context).locations,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.tvIcon,
            width: 24,
            height: 24,
            color:
                selectedTab == 2 ? AppColors.primary : AppColors.textFiledMain,
          ),
          label: S.of(context).episodes,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.settingsIcon,
            color:
                selectedTab == 3 ? AppColors.primary : AppColors.textFiledMain,
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
            _createRoute(const LocationScreen()),
            (route) => false,
          );
        } else if (index == 2) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const EpisodeScreen()),
            (route) => false,
          );
        } else if (index == 3) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const SettingsScreen()),
            (route) => false,
          );
        }
      },
    );
  }
}
