import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).createAccountText,
            style: AppStyles.s14w400,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              S.of(context).create,
              style: const TextStyle(color: AppColors.create),
            ),
          ),
        ],
      ),
    );
  }
}
