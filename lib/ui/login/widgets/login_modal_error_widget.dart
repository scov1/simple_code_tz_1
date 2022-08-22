import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class LoginModalErrorWidget extends StatelessWidget {
  const LoginModalErrorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        S.of(context).error,
        style: AppStyles.s20w500,
      ),
      content: Text(
        S.of(context).invalidLoginOrPassword,
        style: AppStyles.s14w400neutral,
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                minimumSize: Size(MediaQuery.of(context).size.width, 50),
                alignment: Alignment.center,
                side: const BorderSide(
                  color: AppColors.primary,
                )),
            child: Text(
              S.of(context).ok,
              style: const TextStyle(color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
