import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_assets.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/screens/character_screen.dart';
import 'package:simple_code_tz_1/widgets/login_text_form_field_widget.dart';
import 'package:simple_code_tz_1/widgets/password_text_form_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? login;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            child: Image.asset(AppAssets.images.logo,
                                alignment: Alignment.center),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Text(
                              S.of(context).login,
                              style: AppStyles.s14w400label,
                            ),
                          ),
                          LoginTextFormFieldWidget(onSaved: (value) {
                            login = value;
                          }),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Text(
                              S.of(context).password,
                              style: AppStyles.s14w400label,
                            ),
                          ),
                          PasswordTextFormFieldWidget(onSaved: (value) {
                            password = value;
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: SizedBox(
                        width: 319,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              FocusScope.of(context).unfocus();
                              _formKey.currentState?.save();
                              if (login == 'qwerty' && password == '123456ab') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CharacterScreen(),
                                  ),
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) => const ModalErrorWidget(),
                                );
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            S.of(context).signIn,
                            style: AppStyles.s16w400labelButton,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const CreateAccount(),
            ],
          ),
        ],
      ),
    );
  }
}

class ModalErrorWidget extends StatelessWidget {
  const ModalErrorWidget({
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
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0, vertical: 8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12.0),
                ),
                minimumSize: Size(
                    MediaQuery.of(context).size.width,
                    50),
                alignment: Alignment.center,
                side: const BorderSide(
                  color: AppColors.primary,
                )),
            child: Text(
              S.of(context).ok,
              style: const TextStyle(
                  color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}


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
