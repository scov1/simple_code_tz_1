import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_code_tz_1/constants/app_assets.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class LoginTextFormFieldWidget extends StatelessWidget {
  const LoginTextFormFieldWidget({
    Key? key,
    required this.onSaved
  }) : super(key: key);

  final Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).inputErrorCheckLogin;
        }
        if (value.length < 3) {
          return S.of(context).inputErrorLoginIsShort;
        }
        return null;
      },
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      onSaved: onSaved,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SvgPicture.asset(
            AppAssets.svg.account,
            width: 14,
            height: 16,
          ),
        ),
        hintText: S.of(context).login,
        hintStyle: AppStyles.s16w400textField,
        filled: true,
        fillColor: AppColors.textFieldBack,
      ),
    );
  }
}
