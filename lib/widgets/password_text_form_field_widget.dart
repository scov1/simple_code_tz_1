import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_code_tz_1/constants/app_assets.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class PasswordTextFormFieldWidget extends StatelessWidget {
  const PasswordTextFormFieldWidget({
    Key? key,
    required this.onSaved
  }) : super(key: key);

  final Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).inputErrorCheckPassword;
        }
        if (value.length < 8) {
          return S.of(context).inputErorPasswordIsShort;
        }
        return null;
      },
      onSaved: onSaved,
      style: AppStyles.s16w400textField,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SvgPicture.asset(
            AppAssets.svg.password,
            width: 14,
            height: 16,
          ),
        ),
        hintText: S.of(context).password,
        hintStyle: AppStyles.s16w400textField,
        filled: true,
        fillColor: AppColors.textFieldBack,
      ),
    );
  }
}
