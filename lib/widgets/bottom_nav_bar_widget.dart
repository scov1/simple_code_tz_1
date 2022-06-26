import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_code_tz_1/constants/app_assets.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';


class BottomNavBar extends StatelessWidget {
  final int selectedTab;
  final ValueChanged<int> onSelectedTab; 
  const BottomNavBar({Key? key,required this.selectedTab,required this.onSelectedTab}) : super(key: key);

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
          onTap: onSelectedTab,
      );
  }
}